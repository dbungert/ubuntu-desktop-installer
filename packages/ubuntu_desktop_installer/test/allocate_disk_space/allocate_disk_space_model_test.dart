import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_desktop_installer/pages/allocate_disk_space/allocate_disk_space_model.dart';
import 'package:ubuntu_desktop_installer/pages/allocate_disk_space/storage_types.dart';
import 'package:ubuntu_desktop_installer/services.dart';

import 'allocate_disk_space_model_test.mocks.dart';

@GenerateMocks([DiskStorageService])
void main() {
  const testDisks = <Disk>[
    Disk(id: 'a', objects: [
      Partition(number: 1),
    ]),
    Disk(
      id: 'b',
      bootDevice: true,
      preserve: true,
      objects: [
        Partition(number: 1),
        Partition(number: 2, grubDevice: true),
      ],
    ),
  ];
  const changedDisks = <Disk>[Disk(path: '/foo')];

  test('get storage', () async {
    final service = MockDiskStorageService();
    when(service.getStorage()).thenAnswer((_) async => testDisks);

    final model = AllocateDiskSpaceModel(service);
    await model.getStorage();
    verify(service.getStorage()).called(1);

    expect(model.disks, equals(testDisks));
  });

  test('set storage', () async {
    final service = MockDiskStorageService();
    when(service.getStorage()).thenAnswer((_) async => testDisks);
    when(service.setStorage(testDisks)).thenAnswer((_) async => changedDisks);

    final model = AllocateDiskSpaceModel(service);
    await model.getStorage();

    await model.setStorage();
    expect(model.disks, equals(changedDisks));
    verify(service.setStorage(testDisks)).called(1);
  });

  test('reset storage', () async {
    final service = MockDiskStorageService();
    when(service.resetStorage()).thenAnswer((_) async => changedDisks);

    final model = AllocateDiskSpaceModel(service);
    await model.resetStorage();
    expect(model.disks, equals(changedDisks));
    verify(service.resetStorage()).called(1);
  });

  test('reformat disk', () async {
    final service = MockDiskStorageService();
    when(service.reformatDisk(testDisks.first))
        .thenAnswer((_) async => changedDisks);

    final model = AllocateDiskSpaceModel(service);
    await model.reformatDisk(testDisks.first);
    expect(model.disks, equals(changedDisks));
    verify(service.reformatDisk(testDisks.first)).called(1);
  });

  test('select storage', () async {
    final service = MockDiskStorageService();
    when(service.getStorage()).thenAnswer((_) async => testDisks);

    final model = AllocateDiskSpaceModel(service);
    expect(model.isStorageSelected(0), isFalse);
    expect(model.isStorageSelected(1), isFalse);
    expect(model.isStorageSelected(1, 0), isFalse);
    expect(model.selectedDiskIndex, equals(-1));
    expect(model.selectedObjectIndex, equals(-1));
    expect(model.selectedDisk, isNull);
    expect(model.selectedPartition, isNull);

    await model.getStorage();

    expect(model.isStorageSelected(0), isTrue);
    expect(model.isStorageSelected(1), isFalse);
    expect(model.isStorageSelected(1, 0), isFalse);
    expect(model.selectedDiskIndex, isZero);
    expect(model.selectedObjectIndex, equals(-1));
    expect(model.selectedDisk, equals(testDisks[0]));
    expect(model.selectedPartition, isNull);

    model.selectStorage(0);
    expect(model.isStorageSelected(0), isTrue);
    expect(model.isStorageSelected(1), isFalse);
    expect(model.isStorageSelected(1, 0), isFalse);
    expect(model.selectedDiskIndex, isZero);
    expect(model.selectedObjectIndex, equals(-1));
    expect(model.selectedDisk, equals(testDisks[0]));
    expect(model.selectedPartition, isNull);

    model.selectStorage(1);
    expect(model.isStorageSelected(0), isFalse);
    expect(model.isStorageSelected(1), isTrue);
    expect(model.isStorageSelected(1, 0), isFalse);
    expect(model.selectedDiskIndex, equals(1));
    expect(model.selectedObjectIndex, equals(-1));
    expect(model.selectedDisk, equals(testDisks[1]));
    expect(model.selectedPartition, isNull);

    model.selectStorage(1, 0);
    expect(model.isStorageSelected(0), isFalse);
    expect(model.isStorageSelected(1), isFalse);
    expect(model.isStorageSelected(1, 0), isTrue);
    expect(model.selectedDiskIndex, equals(1));
    expect(model.selectedObjectIndex, isZero);
    expect(model.selectedDisk, equals(testDisks[1]));
    expect(model.selectedPartition, equals(testDisks[1].partitions![0]));
  });

  test('notify selection changes', () {
    final model = AllocateDiskSpaceModel(MockDiskStorageService());
    expect(model.selectedDiskIndex, equals(-1));

    var wasNotified = false;
    model.addListener(() => wasNotified = true);

    wasNotified = false;
    model.selectStorage(-1);
    expect(model.selectedDiskIndex, equals(-1));
    expect(wasNotified, isFalse);

    wasNotified = false;
    model.selectStorage(0);
    expect(model.selectedDiskIndex, isZero);
    expect(wasNotified, isTrue);

    wasNotified = false;
    model.selectStorage(1);
    expect(model.selectedDiskIndex, equals(1));
    expect(wasNotified, isTrue);
    expect(model.onSelectionChanged, emits(null));
  });

  test('select boot disk', () async {
    final service = MockDiskStorageService();
    when(service.getStorage()).thenAnswer((_) async => testDisks);
    when(service.addBootPartition(any)).thenAnswer((_) async {
      return [
        testDisks.first.copyWith(bootDevice: true),
        testDisks.last.copyWith(bootDevice: true),
      ];
    });

    final model = AllocateDiskSpaceModel(service);
    expect(model.bootDiskIndex, isNull);

    await model.getStorage();

    expect(model.bootDiskIndex, equals(1));

    model.selectBootDisk(0);
    verify(service.addBootPartition(testDisks.first)).called(1);

    // do not attempt to readd boot partition
    model.selectBootDisk(1);
    verifyNever(service.addBootPartition(testDisks.last));
  });

  test('partition formats', () {
    expect(PartitionFormat.defaultValue, equals(PartitionFormat.ext4));
    expect(PartitionFormat.values.contains(PartitionFormat.ext4), isTrue);
    expect(PartitionFormat.fromPartition(Partition(format: 'ext4')),
        equals(PartitionFormat.ext4));
    expect(PartitionFormat.fromPartition(Partition(format: 'unknown')), isNull);
  });

  test('can add/remove/edit/wipe/reformat', () async {
    final emptyDisk = Disk(objects: [Gap()]);
    final fullDisk = Disk();
    final normalDisk = emptyDisk.copyWith(objects: [Partition()]);
    final mountedPartition =
        emptyDisk.copyWith(objects: [Partition(mount: '/')]);

    final service = MockDiskStorageService();
    when(service.getStorage()).thenAnswer(
      (_) async => [
        emptyDisk,
        fullDisk,
        normalDisk,
        mountedPartition,
      ],
    );

    final model = AllocateDiskSpaceModel(service);
    expect(model.selectedDisk, isNull);
    expect(model.selectedPartition, isNull);
    expect(model.selectedGap, isNull);
    expect(model.canAddPartition, isFalse);
    expect(model.canRemovePartition, isFalse);
    expect(model.canEditPartition, isFalse);
    expect(model.canReformatDisk, isFalse);

    await model.getStorage();
    expect(model.selectedDisk, equals(emptyDisk));
    expect(model.selectedPartition, isNull);
    expect(model.selectedGap, isNull);
    expect(model.canAddPartition, isFalse);
    expect(model.canRemovePartition, isFalse);
    expect(model.canEditPartition, isFalse);
    expect(model.canReformatDisk, isTrue);

    model.selectStorage(0, 0);
    expect(model.selectedDisk, equals(emptyDisk));
    expect(model.selectedPartition, isNull);
    expect(model.selectedGap, isNotNull);
    expect(model.canAddPartition, isTrue);
    expect(model.canRemovePartition, isFalse);
    expect(model.canEditPartition, isFalse);
    expect(model.canReformatDisk, isFalse);

    model.selectStorage(1);
    expect(model.selectedDisk, equals(fullDisk));
    expect(model.selectedPartition, isNull);
    expect(model.selectedGap, isNull);
    expect(model.canAddPartition, isFalse);
    expect(model.canRemovePartition, isFalse);
    expect(model.canEditPartition, isFalse);
    expect(model.canReformatDisk, isTrue);

    model.selectStorage(2);
    expect(model.selectedDisk, equals(normalDisk));
    expect(model.selectedPartition, isNull);
    expect(model.selectedGap, isNull);
    expect(model.canAddPartition, isFalse);
    expect(model.canRemovePartition, isFalse);
    expect(model.canEditPartition, isFalse);
    expect(model.canReformatDisk, isTrue);

    model.selectStorage(2, 0);
    expect(model.selectedDisk, equals(normalDisk));
    expect(model.selectedPartition, isNotNull);
    expect(model.selectedPartition!.canWipe, isFalse);
    expect(model.selectedGap, isNull);
    expect(model.canAddPartition, isFalse);
    expect(model.canRemovePartition, isTrue);
    expect(model.canEditPartition, isTrue);
    expect(model.canReformatDisk, isFalse);

    model.selectStorage(3, 0);
    expect(model.selectedDisk, equals(mountedPartition));
    expect(model.selectedPartition, isNotNull);
    expect(model.selectedPartition!.canWipe, isTrue);
    expect(model.selectedGap, isNull);
    expect(model.canAddPartition, isFalse);
    expect(model.canRemovePartition, isTrue);
    expect(model.canEditPartition, isTrue);
    expect(model.canReformatDisk, isFalse);
  });

  test('add partition', () async {
    const gap = Gap(offset: 123, size: 456);
    const partition = Partition(size: 123, format: 'ext3', mount: '/tst');

    final service = MockDiskStorageService();
    when(service.addPartition(Disk(), gap, partition))
        .thenAnswer((_) async => changedDisks);

    final model = AllocateDiskSpaceModel(service);
    await model.addPartition(Disk(), gap,
        size: 123, format: PartitionFormat.ext3, mount: '/tst');
    expect(model.disks, equals(changedDisks));
    verify(service.addPartition(Disk(), gap, partition)).called(1);
  });

  test('edit partition', () async {
    const partition =
        Partition(number: 1, wipe: false, format: 'ext3', mount: '/tst');
    final edited =
        partition.copyWith(wipe: true, format: 'ext2', mount: '/tmp');

    final service = MockDiskStorageService();
    when(service.editPartition(Disk(), edited))
        .thenAnswer((_) async => changedDisks);

    final model = AllocateDiskSpaceModel(service);
    await model.editPartition(Disk(), partition,
        wipe: true, format: PartitionFormat.ext2, mount: '/tmp');
    expect(model.disks, equals(changedDisks));
    verify(service.editPartition(Disk(), edited)).called(1);
  });

  test('update selection', () async {
    Disk testDisk(int partitions) {
      return Disk(
        objects: [
          for (var i = 0; i < partitions; ++i) Partition(number: i),
          Gap(offset: 123, size: 456),
        ],
      );
    }

    final service = MockDiskStorageService();
    final model = AllocateDiskSpaceModel(service);

    // get partitions -> select first disk
    when(service.getStorage()).thenAnswer((_) async => [testDisk(2)]);
    await model.getStorage();
    expect(model.selectedDiskIndex, equals(0));
    expect(model.selectedObjectIndex, equals(-1));

    // add partition -> select added partition
    when(service.addPartition(testDisk(2), Gap(offset: 123, size: 456),
            Partition(size: 123, format: 'ext4', mount: '/tst')))
        .thenAnswer((_) async => [testDisk(2)]);
    await model.addPartition(model.selectedDisk!, Gap(offset: 123, size: 456),
        size: 123, format: PartitionFormat.ext4, mount: '/tst');
    expect(model.selectedDiskIndex, equals(0));
    expect(model.selectedObjectIndex, equals(1));
  });

  test('dispose', () async {
    final model = AllocateDiskSpaceModel(MockDiskStorageService());
    model.dispose();
    expect(model.onSelectionChanged, emitsDone);
  });

  test('valid', () async {
    final service = MockDiskStorageService();
    final model = AllocateDiskSpaceModel(service);

    when(service.needRoot).thenReturn(true);
    when(service.needBoot).thenReturn(true);
    expect(model.isValid, isFalse);

    when(service.needRoot).thenReturn(false);
    when(service.needBoot).thenReturn(true);
    expect(model.isValid, isFalse);

    when(service.needRoot).thenReturn(true);
    when(service.needBoot).thenReturn(false);
    expect(model.isValid, isFalse);

    when(service.needRoot).thenReturn(false);
    when(service.needBoot).thenReturn(false);
    expect(model.isValid, isTrue);
  });
}