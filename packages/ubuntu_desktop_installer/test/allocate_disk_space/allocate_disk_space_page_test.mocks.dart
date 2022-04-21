// Mocks generated by Mockito 5.0.14 from annotations
// in ubuntu_desktop_installer/test/allocate_disk_space/allocate_disk_space_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;
import 'dart:ui' as _i6;

import 'package:mockito/mockito.dart' as _i1;
import 'package:subiquity_client/subiquity_client.dart' as _i4;
import 'package:ubuntu_desktop_installer/pages/allocate_disk_space/allocate_disk_space_model.dart'
    as _i3;
import 'package:ubuntu_desktop_installer/services.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeUdevDeviceInfo_0 extends _i1.Fake implements _i2.UdevDeviceInfo {}

/// A class which mocks [AllocateDiskSpaceModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockAllocateDiskSpaceModel extends _i1.Mock
    implements _i3.AllocateDiskSpaceModel {
  MockAllocateDiskSpaceModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get isValid =>
      (super.noSuchMethod(Invocation.getter(#isValid), returnValue: false)
          as bool);
  @override
  List<_i4.Disk> get disks =>
      (super.noSuchMethod(Invocation.getter(#disks), returnValue: <_i4.Disk>[])
          as List<_i4.Disk>);
  @override
  int get selectedDiskIndex =>
      (super.noSuchMethod(Invocation.getter(#selectedDiskIndex), returnValue: 0)
          as int);
  @override
  int get selectedObjectIndex => (super
          .noSuchMethod(Invocation.getter(#selectedObjectIndex), returnValue: 0)
      as int);
  @override
  _i5.Stream<dynamic> get onSelectionChanged =>
      (super.noSuchMethod(Invocation.getter(#onSelectionChanged),
          returnValue: Stream<dynamic>.empty()) as _i5.Stream<dynamic>);
  @override
  bool get canAddPartition => (super
          .noSuchMethod(Invocation.getter(#canAddPartition), returnValue: false)
      as bool);
  @override
  bool get canRemovePartition =>
      (super.noSuchMethod(Invocation.getter(#canRemovePartition),
          returnValue: false) as bool);
  @override
  bool get canEditPartition =>
      (super.noSuchMethod(Invocation.getter(#canEditPartition),
          returnValue: false) as bool);
  @override
  bool get canReformatDisk => (super
          .noSuchMethod(Invocation.getter(#canReformatDisk), returnValue: false)
      as bool);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  bool isStorageSelected(int? diskIndex, [int? objectIndex = -1]) =>
      (super.noSuchMethod(
          Invocation.method(#isStorageSelected, [diskIndex, objectIndex]),
          returnValue: false) as bool);
  @override
  _i5.Future<void> addPartition(_i4.Disk? disk, _i4.Gap? gap,
          {int? size, _i3.PartitionFormat? format, String? mount}) =>
      (super.noSuchMethod(
          Invocation.method(#addPartition, [disk, gap],
              {#size: size, #format: format, #mount: mount}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> editPartition(_i4.Disk? disk, _i4.Partition? partition,
          {_i3.PartitionFormat? format, bool? wipe, String? mount}) =>
      (super.noSuchMethod(
          Invocation.method(#editPartition, [disk, partition],
              {#format: format, #wipe: wipe, #mount: mount}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> deletePartition(_i4.Disk? disk, _i4.Partition? partition) =>
      (super.noSuchMethod(
          Invocation.method(#deletePartition, [disk, partition]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  bool canSelectStorage(int? diskIndex, [int? objectIndex = -1]) =>
      (super.noSuchMethod(
          Invocation.method(#canSelectStorage, [diskIndex, objectIndex]),
          returnValue: false) as bool);
  @override
  void selectStorage(int? diskIndex, [int? objectIndex = -1]) => super
      .noSuchMethod(Invocation.method(#selectStorage, [diskIndex, objectIndex]),
          returnValueForMissingStub: null);
  @override
  void selectBootDisk(int? diskIndex) =>
      super.noSuchMethod(Invocation.method(#selectBootDisk, [diskIndex]),
          returnValueForMissingStub: null);
  @override
  _i5.Future<void> getStorage() =>
      (super.noSuchMethod(Invocation.method(#getStorage, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> setStorage() =>
      (super.noSuchMethod(Invocation.method(#setStorage, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> resetStorage() =>
      (super.noSuchMethod(Invocation.method(#resetStorage, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> reformatDisk(_i4.Disk? disk) =>
      (super.noSuchMethod(Invocation.method(#reformatDisk, [disk]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void addListener(_i6.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i6.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
  @override
  String toString() => super.toString();
}

/// A class which mocks [UdevDeviceInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockUdevDeviceInfo extends _i1.Mock implements _i2.UdevDeviceInfo {
  MockUdevDeviceInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get fullName =>
      (super.noSuchMethod(Invocation.getter(#fullName), returnValue: '')
          as String);
  @override
  String toString() => super.toString();
}

/// A class which mocks [UdevService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUdevService extends _i1.Mock implements _i2.UdevService {
  MockUdevService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  _i2.UdevDeviceInfo bySysname(String? sysname) =>
      (super.noSuchMethod(Invocation.method(#bySysname, [sysname]),
          returnValue: _FakeUdevDeviceInfo_0()) as _i2.UdevDeviceInfo);
  @override
  _i2.UdevDeviceInfo bySyspath(String? syspath) =>
      (super.noSuchMethod(Invocation.method(#bySyspath, [syspath]),
          returnValue: _FakeUdevDeviceInfo_0()) as _i2.UdevDeviceInfo);
  @override
  String toString() => super.toString();
}