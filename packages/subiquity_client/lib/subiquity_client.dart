library subiquity_client;

import 'dart:convert';
import 'package:http/http.dart';
import 'src/http_unix_client.dart';
import 'src/types.dart';

export 'src/types.dart';

class SubiquityClient {
  late HttpUnixClient _client;

  void open(String socketPath) {
    _client = HttpUnixClient(socketPath);
  }

  void close() {
    _client.close();
  }

  Future<String> locale() async {
    final request = Request('GET', Uri.http('localhost', 'locale'));
    final response = await _client.send(request);
    final responseStr = await response.stream.bytesToString();
    return responseStr.replaceAll('"', '');
  }

  Future<String> switchLanguage(String code) async {
    final request = Request('POST', Uri.http('localhost', 'locale'));
    request.body = '"$code"';
    final response = await _client.send(request);
    return response.stream.bytesToString();
  }

  Future<KeyboardSetup> keyboard() async {
    final request = Request('GET', Uri.http('localhost', 'keyboard'));
    final response = await _client.send(request);

    final keyboardJson = jsonDecode(await response.stream.bytesToString());
    return KeyboardSetup.fromJson(keyboardJson);
  }

  Future<String> proxy() async {
    final request = Request('GET', Uri.http('localhost', 'proxy'));
    final response = await _client.send(request);
    final responseStr = await response.stream.bytesToString();
    return responseStr.replaceAll('"', '');
  }

  Future<String> mirror() async {
    final request = Request('GET', Uri.http('localhost', 'mirror'));
    final response = await _client.send(request);
    final responseStr = await response.stream.bytesToString();
    return responseStr.replaceAll('"', '');
  }

  Future<IdentityData> identity() async {
    final request = Request('GET', Uri.http('localhost', 'identity'));
    final response = await _client.send(request);

    final identityJson = jsonDecode(await response.stream.bytesToString());
    return IdentityData.fromJson(identityJson);
  }

  Future<SSHData> ssh() async {
    final request = Request('GET', Uri.http('localhost', 'ssh'));
    final response = await _client.send(request);

    final sshJson = jsonDecode(await response.stream.bytesToString());
    return SSHData.fromJson(sshJson);
  }

  /// Get the installer state.
  Future<ApplicationStatus> status() async {
    final request = Request('GET', Uri.http('localhost', 'meta/status'));
    final response = await _client.send(request);

    final statusJson = jsonDecode(await response.stream.bytesToString());
    return ApplicationStatus.fromJson(statusJson);
  }

  /// Mark the controllers for endpoint_names as configured.
  Future<String> markConfigured(List<String> endpointNames) async {
    final request = Request(
        'POST',
        Uri.http('localhost', 'meta/mark_configured',
            {'endpoint_names': '$endpointNames'}));
    final response = await _client.send(request);
    return response.stream.bytesToString();
  }

  /// Confirm that the installation should proceed.
  Future<String> confirm(String tty) async {
    final request =
        Request('POST', Uri.http('localhost', 'meta/confirm', {'tty': tty}));
    final response = await _client.send(request);
    return response.stream.bytesToString();
  }

  /// Get guided disk options.
  Future<GuidedStorageResponse> getGuidedStorage(int minSize, bool wait) async {
    final request = Request(
        'GET',
        Uri.http('localhost', 'storage/guided',
            {'min_size': '$minSize', 'wait': '$wait'}));
    final response = await _client.send(request);

    final responseJson = jsonDecode(await response.stream.bytesToString());
    return GuidedStorageResponse.fromJson(responseJson);
  }

  /// Set guided disk option.
  Future<StorageResponse> setGuidedStorage(GuidedChoice choice) async {
    final request = Request(
        'POST', Uri.http('localhost', 'storage/guided', {'choice': choice}));
    final response = await _client.send(request);

    final responseJson = jsonDecode(await response.stream.bytesToString());
    return StorageResponse.fromJson(responseJson);
  }
}