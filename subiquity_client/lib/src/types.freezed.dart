// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
KeyboardSetting _$KeyboardSettingFromJson(Map<String, dynamic> json) {
  return _KeyboardSetting.fromJson(json);
}

/// @nodoc
class _$KeyboardSettingTearOff {
  const _$KeyboardSettingTearOff();

// ignore: unused_element
  _KeyboardSetting call({String layout, String variant, String toggle}) {
    return _KeyboardSetting(
      layout: layout,
      variant: variant,
      toggle: toggle,
    );
  }

// ignore: unused_element
  KeyboardSetting fromJson(Map<String, Object> json) {
    return KeyboardSetting.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $KeyboardSetting = _$KeyboardSettingTearOff();

/// @nodoc
mixin _$KeyboardSetting {
  String get layout;
  String get variant;
  String get toggle;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $KeyboardSettingCopyWith<KeyboardSetting> get copyWith;
}

/// @nodoc
abstract class $KeyboardSettingCopyWith<$Res> {
  factory $KeyboardSettingCopyWith(
          KeyboardSetting value, $Res Function(KeyboardSetting) then) =
      _$KeyboardSettingCopyWithImpl<$Res>;
  $Res call({String layout, String variant, String toggle});
}

/// @nodoc
class _$KeyboardSettingCopyWithImpl<$Res>
    implements $KeyboardSettingCopyWith<$Res> {
  _$KeyboardSettingCopyWithImpl(this._value, this._then);

  final KeyboardSetting _value;
  // ignore: unused_field
  final $Res Function(KeyboardSetting) _then;

  @override
  $Res call({
    Object layout = freezed,
    Object variant = freezed,
    Object toggle = freezed,
  }) {
    return _then(_value.copyWith(
      layout: layout == freezed ? _value.layout : layout as String,
      variant: variant == freezed ? _value.variant : variant as String,
      toggle: toggle == freezed ? _value.toggle : toggle as String,
    ));
  }
}

/// @nodoc
abstract class _$KeyboardSettingCopyWith<$Res>
    implements $KeyboardSettingCopyWith<$Res> {
  factory _$KeyboardSettingCopyWith(
          _KeyboardSetting value, $Res Function(_KeyboardSetting) then) =
      __$KeyboardSettingCopyWithImpl<$Res>;
  @override
  $Res call({String layout, String variant, String toggle});
}

/// @nodoc
class __$KeyboardSettingCopyWithImpl<$Res>
    extends _$KeyboardSettingCopyWithImpl<$Res>
    implements _$KeyboardSettingCopyWith<$Res> {
  __$KeyboardSettingCopyWithImpl(
      _KeyboardSetting _value, $Res Function(_KeyboardSetting) _then)
      : super(_value, (v) => _then(v as _KeyboardSetting));

  @override
  _KeyboardSetting get _value => super._value as _KeyboardSetting;

  @override
  $Res call({
    Object layout = freezed,
    Object variant = freezed,
    Object toggle = freezed,
  }) {
    return _then(_KeyboardSetting(
      layout: layout == freezed ? _value.layout : layout as String,
      variant: variant == freezed ? _value.variant : variant as String,
      toggle: toggle == freezed ? _value.toggle : toggle as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_KeyboardSetting implements _KeyboardSetting {
  const _$_KeyboardSetting({this.layout, this.variant, this.toggle});

  factory _$_KeyboardSetting.fromJson(Map<String, dynamic> json) =>
      _$_$_KeyboardSettingFromJson(json);

  @override
  final String layout;
  @override
  final String variant;
  @override
  final String toggle;

  @override
  String toString() {
    return 'KeyboardSetting(layout: $layout, variant: $variant, toggle: $toggle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KeyboardSetting &&
            (identical(other.layout, layout) ||
                const DeepCollectionEquality().equals(other.layout, layout)) &&
            (identical(other.variant, variant) ||
                const DeepCollectionEquality()
                    .equals(other.variant, variant)) &&
            (identical(other.toggle, toggle) ||
                const DeepCollectionEquality().equals(other.toggle, toggle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(layout) ^
      const DeepCollectionEquality().hash(variant) ^
      const DeepCollectionEquality().hash(toggle);

  @JsonKey(ignore: true)
  @override
  _$KeyboardSettingCopyWith<_KeyboardSetting> get copyWith =>
      __$KeyboardSettingCopyWithImpl<_KeyboardSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_KeyboardSettingToJson(this);
  }
}

abstract class _KeyboardSetting implements KeyboardSetting {
  const factory _KeyboardSetting(
      {String layout, String variant, String toggle}) = _$_KeyboardSetting;

  factory _KeyboardSetting.fromJson(Map<String, dynamic> json) =
      _$_KeyboardSetting.fromJson;

  @override
  String get layout;
  @override
  String get variant;
  @override
  String get toggle;
  @override
  @JsonKey(ignore: true)
  _$KeyboardSettingCopyWith<_KeyboardSetting> get copyWith;
}

IdentityData _$IdentityDataFromJson(Map<String, dynamic> json) {
  return _IdentityData.fromJson(json);
}

/// @nodoc
class _$IdentityDataTearOff {
  const _$IdentityDataTearOff();

// ignore: unused_element
  _IdentityData call(
      {String realname,
      String username,
      @JsonKey(name: 'crypted_password') String cryptedPassword,
      String hostname}) {
    return _IdentityData(
      realname: realname,
      username: username,
      cryptedPassword: cryptedPassword,
      hostname: hostname,
    );
  }

// ignore: unused_element
  IdentityData fromJson(Map<String, Object> json) {
    return IdentityData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IdentityData = _$IdentityDataTearOff();

/// @nodoc
mixin _$IdentityData {
  String get realname;
  String get username;
  @JsonKey(name: 'crypted_password')
  String get cryptedPassword;
  String get hostname;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $IdentityDataCopyWith<IdentityData> get copyWith;
}

/// @nodoc
abstract class $IdentityDataCopyWith<$Res> {
  factory $IdentityDataCopyWith(
          IdentityData value, $Res Function(IdentityData) then) =
      _$IdentityDataCopyWithImpl<$Res>;
  $Res call(
      {String realname,
      String username,
      @JsonKey(name: 'crypted_password') String cryptedPassword,
      String hostname});
}

/// @nodoc
class _$IdentityDataCopyWithImpl<$Res> implements $IdentityDataCopyWith<$Res> {
  _$IdentityDataCopyWithImpl(this._value, this._then);

  final IdentityData _value;
  // ignore: unused_field
  final $Res Function(IdentityData) _then;

  @override
  $Res call({
    Object realname = freezed,
    Object username = freezed,
    Object cryptedPassword = freezed,
    Object hostname = freezed,
  }) {
    return _then(_value.copyWith(
      realname: realname == freezed ? _value.realname : realname as String,
      username: username == freezed ? _value.username : username as String,
      cryptedPassword: cryptedPassword == freezed
          ? _value.cryptedPassword
          : cryptedPassword as String,
      hostname: hostname == freezed ? _value.hostname : hostname as String,
    ));
  }
}

/// @nodoc
abstract class _$IdentityDataCopyWith<$Res>
    implements $IdentityDataCopyWith<$Res> {
  factory _$IdentityDataCopyWith(
          _IdentityData value, $Res Function(_IdentityData) then) =
      __$IdentityDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String realname,
      String username,
      @JsonKey(name: 'crypted_password') String cryptedPassword,
      String hostname});
}

/// @nodoc
class __$IdentityDataCopyWithImpl<$Res> extends _$IdentityDataCopyWithImpl<$Res>
    implements _$IdentityDataCopyWith<$Res> {
  __$IdentityDataCopyWithImpl(
      _IdentityData _value, $Res Function(_IdentityData) _then)
      : super(_value, (v) => _then(v as _IdentityData));

  @override
  _IdentityData get _value => super._value as _IdentityData;

  @override
  $Res call({
    Object realname = freezed,
    Object username = freezed,
    Object cryptedPassword = freezed,
    Object hostname = freezed,
  }) {
    return _then(_IdentityData(
      realname: realname == freezed ? _value.realname : realname as String,
      username: username == freezed ? _value.username : username as String,
      cryptedPassword: cryptedPassword == freezed
          ? _value.cryptedPassword
          : cryptedPassword as String,
      hostname: hostname == freezed ? _value.hostname : hostname as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IdentityData implements _IdentityData {
  const _$_IdentityData(
      {this.realname,
      this.username,
      @JsonKey(name: 'crypted_password') this.cryptedPassword,
      this.hostname});

  factory _$_IdentityData.fromJson(Map<String, dynamic> json) =>
      _$_$_IdentityDataFromJson(json);

  @override
  final String realname;
  @override
  final String username;
  @override
  @JsonKey(name: 'crypted_password')
  final String cryptedPassword;
  @override
  final String hostname;

  @override
  String toString() {
    return 'IdentityData(realname: $realname, username: $username, cryptedPassword: $cryptedPassword, hostname: $hostname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdentityData &&
            (identical(other.realname, realname) ||
                const DeepCollectionEquality()
                    .equals(other.realname, realname)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.cryptedPassword, cryptedPassword) ||
                const DeepCollectionEquality()
                    .equals(other.cryptedPassword, cryptedPassword)) &&
            (identical(other.hostname, hostname) ||
                const DeepCollectionEquality()
                    .equals(other.hostname, hostname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(realname) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(cryptedPassword) ^
      const DeepCollectionEquality().hash(hostname);

  @JsonKey(ignore: true)
  @override
  _$IdentityDataCopyWith<_IdentityData> get copyWith =>
      __$IdentityDataCopyWithImpl<_IdentityData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdentityDataToJson(this);
  }
}

abstract class _IdentityData implements IdentityData {
  const factory _IdentityData(
      {String realname,
      String username,
      @JsonKey(name: 'crypted_password') String cryptedPassword,
      String hostname}) = _$_IdentityData;

  factory _IdentityData.fromJson(Map<String, dynamic> json) =
      _$_IdentityData.fromJson;

  @override
  String get realname;
  @override
  String get username;
  @override
  @JsonKey(name: 'crypted_password')
  String get cryptedPassword;
  @override
  String get hostname;
  @override
  @JsonKey(ignore: true)
  _$IdentityDataCopyWith<_IdentityData> get copyWith;
}

SSHData _$SSHDataFromJson(Map<String, dynamic> json) {
  return _SSHData.fromJson(json);
}

/// @nodoc
class _$SSHDataTearOff {
  const _$SSHDataTearOff();

// ignore: unused_element
  _SSHData call(
      {@JsonKey(name: 'install_server') bool installServer,
      @JsonKey(name: 'allow_pw') bool allowPw,
      @JsonKey(name: 'authorized_keys') List<dynamic> authorizedKeys}) {
    return _SSHData(
      installServer: installServer,
      allowPw: allowPw,
      authorizedKeys: authorizedKeys,
    );
  }

// ignore: unused_element
  SSHData fromJson(Map<String, Object> json) {
    return SSHData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SSHData = _$SSHDataTearOff();

/// @nodoc
mixin _$SSHData {
  @JsonKey(name: 'install_server')
  bool get installServer;
  @JsonKey(name: 'allow_pw')
  bool get allowPw;
  @JsonKey(name: 'authorized_keys')
  List<dynamic> get authorizedKeys;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SSHDataCopyWith<SSHData> get copyWith;
}

/// @nodoc
abstract class $SSHDataCopyWith<$Res> {
  factory $SSHDataCopyWith(SSHData value, $Res Function(SSHData) then) =
      _$SSHDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'install_server') bool installServer,
      @JsonKey(name: 'allow_pw') bool allowPw,
      @JsonKey(name: 'authorized_keys') List<dynamic> authorizedKeys});
}

/// @nodoc
class _$SSHDataCopyWithImpl<$Res> implements $SSHDataCopyWith<$Res> {
  _$SSHDataCopyWithImpl(this._value, this._then);

  final SSHData _value;
  // ignore: unused_field
  final $Res Function(SSHData) _then;

  @override
  $Res call({
    Object installServer = freezed,
    Object allowPw = freezed,
    Object authorizedKeys = freezed,
  }) {
    return _then(_value.copyWith(
      installServer: installServer == freezed
          ? _value.installServer
          : installServer as bool,
      allowPw: allowPw == freezed ? _value.allowPw : allowPw as bool,
      authorizedKeys: authorizedKeys == freezed
          ? _value.authorizedKeys
          : authorizedKeys as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$SSHDataCopyWith<$Res> implements $SSHDataCopyWith<$Res> {
  factory _$SSHDataCopyWith(_SSHData value, $Res Function(_SSHData) then) =
      __$SSHDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'install_server') bool installServer,
      @JsonKey(name: 'allow_pw') bool allowPw,
      @JsonKey(name: 'authorized_keys') List<dynamic> authorizedKeys});
}

/// @nodoc
class __$SSHDataCopyWithImpl<$Res> extends _$SSHDataCopyWithImpl<$Res>
    implements _$SSHDataCopyWith<$Res> {
  __$SSHDataCopyWithImpl(_SSHData _value, $Res Function(_SSHData) _then)
      : super(_value, (v) => _then(v as _SSHData));

  @override
  _SSHData get _value => super._value as _SSHData;

  @override
  $Res call({
    Object installServer = freezed,
    Object allowPw = freezed,
    Object authorizedKeys = freezed,
  }) {
    return _then(_SSHData(
      installServer: installServer == freezed
          ? _value.installServer
          : installServer as bool,
      allowPw: allowPw == freezed ? _value.allowPw : allowPw as bool,
      authorizedKeys: authorizedKeys == freezed
          ? _value.authorizedKeys
          : authorizedKeys as List<dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SSHData implements _SSHData {
  const _$_SSHData(
      {@JsonKey(name: 'install_server') this.installServer,
      @JsonKey(name: 'allow_pw') this.allowPw,
      @JsonKey(name: 'authorized_keys') this.authorizedKeys});

  factory _$_SSHData.fromJson(Map<String, dynamic> json) =>
      _$_$_SSHDataFromJson(json);

  @override
  @JsonKey(name: 'install_server')
  final bool installServer;
  @override
  @JsonKey(name: 'allow_pw')
  final bool allowPw;
  @override
  @JsonKey(name: 'authorized_keys')
  final List<dynamic> authorizedKeys;

  @override
  String toString() {
    return 'SSHData(installServer: $installServer, allowPw: $allowPw, authorizedKeys: $authorizedKeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SSHData &&
            (identical(other.installServer, installServer) ||
                const DeepCollectionEquality()
                    .equals(other.installServer, installServer)) &&
            (identical(other.allowPw, allowPw) ||
                const DeepCollectionEquality()
                    .equals(other.allowPw, allowPw)) &&
            (identical(other.authorizedKeys, authorizedKeys) ||
                const DeepCollectionEquality()
                    .equals(other.authorizedKeys, authorizedKeys)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(installServer) ^
      const DeepCollectionEquality().hash(allowPw) ^
      const DeepCollectionEquality().hash(authorizedKeys);

  @JsonKey(ignore: true)
  @override
  _$SSHDataCopyWith<_SSHData> get copyWith =>
      __$SSHDataCopyWithImpl<_SSHData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SSHDataToJson(this);
  }
}

abstract class _SSHData implements SSHData {
  const factory _SSHData(
          {@JsonKey(name: 'install_server') bool installServer,
          @JsonKey(name: 'allow_pw') bool allowPw,
          @JsonKey(name: 'authorized_keys') List<dynamic> authorizedKeys}) =
      _$_SSHData;

  factory _SSHData.fromJson(Map<String, dynamic> json) = _$_SSHData.fromJson;

  @override
  @JsonKey(name: 'install_server')
  bool get installServer;
  @override
  @JsonKey(name: 'allow_pw')
  bool get allowPw;
  @override
  @JsonKey(name: 'authorized_keys')
  List<dynamic> get authorizedKeys;
  @override
  @JsonKey(ignore: true)
  _$SSHDataCopyWith<_SSHData> get copyWith;
}

ErrorReportRef _$ErrorReportRefFromJson(Map<String, dynamic> json) {
  return _ErrorReportRef.fromJson(json);
}

/// @nodoc
class _$ErrorReportRefTearOff {
  const _$ErrorReportRefTearOff();

// ignore: unused_element
  _ErrorReportRef call(
      {ErrorReportState state,
      String base,
      ErrorReportKind kind,
      bool seen,
      @JsonKey(name: 'oops_id') String oopsId}) {
    return _ErrorReportRef(
      state: state,
      base: base,
      kind: kind,
      seen: seen,
      oopsId: oopsId,
    );
  }

// ignore: unused_element
  ErrorReportRef fromJson(Map<String, Object> json) {
    return ErrorReportRef.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ErrorReportRef = _$ErrorReportRefTearOff();

/// @nodoc
mixin _$ErrorReportRef {
  ErrorReportState get state;
  String get base;
  ErrorReportKind get kind;
  bool get seen;
  @JsonKey(name: 'oops_id')
  String get oopsId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ErrorReportRefCopyWith<ErrorReportRef> get copyWith;
}

/// @nodoc
abstract class $ErrorReportRefCopyWith<$Res> {
  factory $ErrorReportRefCopyWith(
          ErrorReportRef value, $Res Function(ErrorReportRef) then) =
      _$ErrorReportRefCopyWithImpl<$Res>;
  $Res call(
      {ErrorReportState state,
      String base,
      ErrorReportKind kind,
      bool seen,
      @JsonKey(name: 'oops_id') String oopsId});
}

/// @nodoc
class _$ErrorReportRefCopyWithImpl<$Res>
    implements $ErrorReportRefCopyWith<$Res> {
  _$ErrorReportRefCopyWithImpl(this._value, this._then);

  final ErrorReportRef _value;
  // ignore: unused_field
  final $Res Function(ErrorReportRef) _then;

  @override
  $Res call({
    Object state = freezed,
    Object base = freezed,
    Object kind = freezed,
    Object seen = freezed,
    Object oopsId = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed ? _value.state : state as ErrorReportState,
      base: base == freezed ? _value.base : base as String,
      kind: kind == freezed ? _value.kind : kind as ErrorReportKind,
      seen: seen == freezed ? _value.seen : seen as bool,
      oopsId: oopsId == freezed ? _value.oopsId : oopsId as String,
    ));
  }
}

/// @nodoc
abstract class _$ErrorReportRefCopyWith<$Res>
    implements $ErrorReportRefCopyWith<$Res> {
  factory _$ErrorReportRefCopyWith(
          _ErrorReportRef value, $Res Function(_ErrorReportRef) then) =
      __$ErrorReportRefCopyWithImpl<$Res>;
  @override
  $Res call(
      {ErrorReportState state,
      String base,
      ErrorReportKind kind,
      bool seen,
      @JsonKey(name: 'oops_id') String oopsId});
}

/// @nodoc
class __$ErrorReportRefCopyWithImpl<$Res>
    extends _$ErrorReportRefCopyWithImpl<$Res>
    implements _$ErrorReportRefCopyWith<$Res> {
  __$ErrorReportRefCopyWithImpl(
      _ErrorReportRef _value, $Res Function(_ErrorReportRef) _then)
      : super(_value, (v) => _then(v as _ErrorReportRef));

  @override
  _ErrorReportRef get _value => super._value as _ErrorReportRef;

  @override
  $Res call({
    Object state = freezed,
    Object base = freezed,
    Object kind = freezed,
    Object seen = freezed,
    Object oopsId = freezed,
  }) {
    return _then(_ErrorReportRef(
      state: state == freezed ? _value.state : state as ErrorReportState,
      base: base == freezed ? _value.base : base as String,
      kind: kind == freezed ? _value.kind : kind as ErrorReportKind,
      seen: seen == freezed ? _value.seen : seen as bool,
      oopsId: oopsId == freezed ? _value.oopsId : oopsId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ErrorReportRef implements _ErrorReportRef {
  const _$_ErrorReportRef(
      {this.state,
      this.base,
      this.kind,
      this.seen,
      @JsonKey(name: 'oops_id') this.oopsId});

  factory _$_ErrorReportRef.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorReportRefFromJson(json);

  @override
  final ErrorReportState state;
  @override
  final String base;
  @override
  final ErrorReportKind kind;
  @override
  final bool seen;
  @override
  @JsonKey(name: 'oops_id')
  final String oopsId;

  @override
  String toString() {
    return 'ErrorReportRef(state: $state, base: $base, kind: $kind, seen: $seen, oopsId: $oopsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorReportRef &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.base, base) ||
                const DeepCollectionEquality().equals(other.base, base)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.seen, seen) ||
                const DeepCollectionEquality().equals(other.seen, seen)) &&
            (identical(other.oopsId, oopsId) ||
                const DeepCollectionEquality().equals(other.oopsId, oopsId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(base) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(seen) ^
      const DeepCollectionEquality().hash(oopsId);

  @JsonKey(ignore: true)
  @override
  _$ErrorReportRefCopyWith<_ErrorReportRef> get copyWith =>
      __$ErrorReportRefCopyWithImpl<_ErrorReportRef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorReportRefToJson(this);
  }
}

abstract class _ErrorReportRef implements ErrorReportRef {
  const factory _ErrorReportRef(
      {ErrorReportState state,
      String base,
      ErrorReportKind kind,
      bool seen,
      @JsonKey(name: 'oops_id') String oopsId}) = _$_ErrorReportRef;

  factory _ErrorReportRef.fromJson(Map<String, dynamic> json) =
      _$_ErrorReportRef.fromJson;

  @override
  ErrorReportState get state;
  @override
  String get base;
  @override
  ErrorReportKind get kind;
  @override
  bool get seen;
  @override
  @JsonKey(name: 'oops_id')
  String get oopsId;
  @override
  @JsonKey(ignore: true)
  _$ErrorReportRefCopyWith<_ErrorReportRef> get copyWith;
}

ApplicationStatus _$ApplicationStatusFromJson(Map<String, dynamic> json) {
  return _ApplicationStatus.fromJson(json);
}

/// @nodoc
class _$ApplicationStatusTearOff {
  const _$ApplicationStatusTearOff();

// ignore: unused_element
  _ApplicationStatus call(
      {ApplicationState state,
      @JsonKey(name: 'confirming_tty') String confirmingTty,
      ErrorReportRef error,
      @JsonKey(name: 'cloud_init_ok') bool cloudInitOk,
      bool interactive,
      @JsonKey(name: 'echo_syslog_id') String echoSyslogId,
      @JsonKey(name: 'log_syslog_id') String logSyslogId,
      @JsonKey(name: 'event_syslog_id') String eventSyslogId}) {
    return _ApplicationStatus(
      state: state,
      confirmingTty: confirmingTty,
      error: error,
      cloudInitOk: cloudInitOk,
      interactive: interactive,
      echoSyslogId: echoSyslogId,
      logSyslogId: logSyslogId,
      eventSyslogId: eventSyslogId,
    );
  }

// ignore: unused_element
  ApplicationStatus fromJson(Map<String, Object> json) {
    return ApplicationStatus.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ApplicationStatus = _$ApplicationStatusTearOff();

/// @nodoc
mixin _$ApplicationStatus {
  ApplicationState get state;
  @JsonKey(name: 'confirming_tty')
  String get confirmingTty;
  ErrorReportRef get error;
  @JsonKey(name: 'cloud_init_ok')
  bool get cloudInitOk;
  bool get interactive;
  @JsonKey(name: 'echo_syslog_id')
  String get echoSyslogId;
  @JsonKey(name: 'log_syslog_id')
  String get logSyslogId;
  @JsonKey(name: 'event_syslog_id')
  String get eventSyslogId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ApplicationStatusCopyWith<ApplicationStatus> get copyWith;
}

/// @nodoc
abstract class $ApplicationStatusCopyWith<$Res> {
  factory $ApplicationStatusCopyWith(
          ApplicationStatus value, $Res Function(ApplicationStatus) then) =
      _$ApplicationStatusCopyWithImpl<$Res>;
  $Res call(
      {ApplicationState state,
      @JsonKey(name: 'confirming_tty') String confirmingTty,
      ErrorReportRef error,
      @JsonKey(name: 'cloud_init_ok') bool cloudInitOk,
      bool interactive,
      @JsonKey(name: 'echo_syslog_id') String echoSyslogId,
      @JsonKey(name: 'log_syslog_id') String logSyslogId,
      @JsonKey(name: 'event_syslog_id') String eventSyslogId});

  $ErrorReportRefCopyWith<$Res> get error;
}

/// @nodoc
class _$ApplicationStatusCopyWithImpl<$Res>
    implements $ApplicationStatusCopyWith<$Res> {
  _$ApplicationStatusCopyWithImpl(this._value, this._then);

  final ApplicationStatus _value;
  // ignore: unused_field
  final $Res Function(ApplicationStatus) _then;

  @override
  $Res call({
    Object state = freezed,
    Object confirmingTty = freezed,
    Object error = freezed,
    Object cloudInitOk = freezed,
    Object interactive = freezed,
    Object echoSyslogId = freezed,
    Object logSyslogId = freezed,
    Object eventSyslogId = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed ? _value.state : state as ApplicationState,
      confirmingTty: confirmingTty == freezed
          ? _value.confirmingTty
          : confirmingTty as String,
      error: error == freezed ? _value.error : error as ErrorReportRef,
      cloudInitOk:
          cloudInitOk == freezed ? _value.cloudInitOk : cloudInitOk as bool,
      interactive:
          interactive == freezed ? _value.interactive : interactive as bool,
      echoSyslogId: echoSyslogId == freezed
          ? _value.echoSyslogId
          : echoSyslogId as String,
      logSyslogId:
          logSyslogId == freezed ? _value.logSyslogId : logSyslogId as String,
      eventSyslogId: eventSyslogId == freezed
          ? _value.eventSyslogId
          : eventSyslogId as String,
    ));
  }

  @override
  $ErrorReportRefCopyWith<$Res> get error {
    if (_value.error == null) {
      return null;
    }
    return $ErrorReportRefCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$ApplicationStatusCopyWith<$Res>
    implements $ApplicationStatusCopyWith<$Res> {
  factory _$ApplicationStatusCopyWith(
          _ApplicationStatus value, $Res Function(_ApplicationStatus) then) =
      __$ApplicationStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {ApplicationState state,
      @JsonKey(name: 'confirming_tty') String confirmingTty,
      ErrorReportRef error,
      @JsonKey(name: 'cloud_init_ok') bool cloudInitOk,
      bool interactive,
      @JsonKey(name: 'echo_syslog_id') String echoSyslogId,
      @JsonKey(name: 'log_syslog_id') String logSyslogId,
      @JsonKey(name: 'event_syslog_id') String eventSyslogId});

  @override
  $ErrorReportRefCopyWith<$Res> get error;
}

/// @nodoc
class __$ApplicationStatusCopyWithImpl<$Res>
    extends _$ApplicationStatusCopyWithImpl<$Res>
    implements _$ApplicationStatusCopyWith<$Res> {
  __$ApplicationStatusCopyWithImpl(
      _ApplicationStatus _value, $Res Function(_ApplicationStatus) _then)
      : super(_value, (v) => _then(v as _ApplicationStatus));

  @override
  _ApplicationStatus get _value => super._value as _ApplicationStatus;

  @override
  $Res call({
    Object state = freezed,
    Object confirmingTty = freezed,
    Object error = freezed,
    Object cloudInitOk = freezed,
    Object interactive = freezed,
    Object echoSyslogId = freezed,
    Object logSyslogId = freezed,
    Object eventSyslogId = freezed,
  }) {
    return _then(_ApplicationStatus(
      state: state == freezed ? _value.state : state as ApplicationState,
      confirmingTty: confirmingTty == freezed
          ? _value.confirmingTty
          : confirmingTty as String,
      error: error == freezed ? _value.error : error as ErrorReportRef,
      cloudInitOk:
          cloudInitOk == freezed ? _value.cloudInitOk : cloudInitOk as bool,
      interactive:
          interactive == freezed ? _value.interactive : interactive as bool,
      echoSyslogId: echoSyslogId == freezed
          ? _value.echoSyslogId
          : echoSyslogId as String,
      logSyslogId:
          logSyslogId == freezed ? _value.logSyslogId : logSyslogId as String,
      eventSyslogId: eventSyslogId == freezed
          ? _value.eventSyslogId
          : eventSyslogId as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_ApplicationStatus implements _ApplicationStatus {
  const _$_ApplicationStatus(
      {this.state,
      @JsonKey(name: 'confirming_tty') this.confirmingTty,
      this.error,
      @JsonKey(name: 'cloud_init_ok') this.cloudInitOk,
      this.interactive,
      @JsonKey(name: 'echo_syslog_id') this.echoSyslogId,
      @JsonKey(name: 'log_syslog_id') this.logSyslogId,
      @JsonKey(name: 'event_syslog_id') this.eventSyslogId});

  factory _$_ApplicationStatus.fromJson(Map<String, dynamic> json) =>
      _$_$_ApplicationStatusFromJson(json);

  @override
  final ApplicationState state;
  @override
  @JsonKey(name: 'confirming_tty')
  final String confirmingTty;
  @override
  final ErrorReportRef error;
  @override
  @JsonKey(name: 'cloud_init_ok')
  final bool cloudInitOk;
  @override
  final bool interactive;
  @override
  @JsonKey(name: 'echo_syslog_id')
  final String echoSyslogId;
  @override
  @JsonKey(name: 'log_syslog_id')
  final String logSyslogId;
  @override
  @JsonKey(name: 'event_syslog_id')
  final String eventSyslogId;

  @override
  String toString() {
    return 'ApplicationStatus(state: $state, confirmingTty: $confirmingTty, error: $error, cloudInitOk: $cloudInitOk, interactive: $interactive, echoSyslogId: $echoSyslogId, logSyslogId: $logSyslogId, eventSyslogId: $eventSyslogId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplicationStatus &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.confirmingTty, confirmingTty) ||
                const DeepCollectionEquality()
                    .equals(other.confirmingTty, confirmingTty)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.cloudInitOk, cloudInitOk) ||
                const DeepCollectionEquality()
                    .equals(other.cloudInitOk, cloudInitOk)) &&
            (identical(other.interactive, interactive) ||
                const DeepCollectionEquality()
                    .equals(other.interactive, interactive)) &&
            (identical(other.echoSyslogId, echoSyslogId) ||
                const DeepCollectionEquality()
                    .equals(other.echoSyslogId, echoSyslogId)) &&
            (identical(other.logSyslogId, logSyslogId) ||
                const DeepCollectionEquality()
                    .equals(other.logSyslogId, logSyslogId)) &&
            (identical(other.eventSyslogId, eventSyslogId) ||
                const DeepCollectionEquality()
                    .equals(other.eventSyslogId, eventSyslogId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(confirmingTty) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(cloudInitOk) ^
      const DeepCollectionEquality().hash(interactive) ^
      const DeepCollectionEquality().hash(echoSyslogId) ^
      const DeepCollectionEquality().hash(logSyslogId) ^
      const DeepCollectionEquality().hash(eventSyslogId);

  @JsonKey(ignore: true)
  @override
  _$ApplicationStatusCopyWith<_ApplicationStatus> get copyWith =>
      __$ApplicationStatusCopyWithImpl<_ApplicationStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApplicationStatusToJson(this);
  }
}

abstract class _ApplicationStatus implements ApplicationStatus {
  const factory _ApplicationStatus(
          {ApplicationState state,
          @JsonKey(name: 'confirming_tty') String confirmingTty,
          ErrorReportRef error,
          @JsonKey(name: 'cloud_init_ok') bool cloudInitOk,
          bool interactive,
          @JsonKey(name: 'echo_syslog_id') String echoSyslogId,
          @JsonKey(name: 'log_syslog_id') String logSyslogId,
          @JsonKey(name: 'event_syslog_id') String eventSyslogId}) =
      _$_ApplicationStatus;

  factory _ApplicationStatus.fromJson(Map<String, dynamic> json) =
      _$_ApplicationStatus.fromJson;

  @override
  ApplicationState get state;
  @override
  @JsonKey(name: 'confirming_tty')
  String get confirmingTty;
  @override
  ErrorReportRef get error;
  @override
  @JsonKey(name: 'cloud_init_ok')
  bool get cloudInitOk;
  @override
  bool get interactive;
  @override
  @JsonKey(name: 'echo_syslog_id')
  String get echoSyslogId;
  @override
  @JsonKey(name: 'log_syslog_id')
  String get logSyslogId;
  @override
  @JsonKey(name: 'event_syslog_id')
  String get eventSyslogId;
  @override
  @JsonKey(ignore: true)
  _$ApplicationStatusCopyWith<_ApplicationStatus> get copyWith;
}