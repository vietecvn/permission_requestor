// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) {
  return _DeviceInfo.fromJson(json);
}

/// @nodoc
mixin _$DeviceInfo {
  @JsonKey(name: 'device_id')
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_type', fromJson: convertDeviceType)
  DeviceType? get deviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'os_version')
  String? get osVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_model')
  String? get deviceModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_version')
  String? get appVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'manufacturer')
  String? get manufacturer => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch')
  String? get branch => throw _privateConstructorUsedError;
  @JsonKey(name: 'application_name')
  String? get applicationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sdkInt')
  int? get sdkInt => throw _privateConstructorUsedError;

  /// Serializes this DeviceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceInfoCopyWith<DeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoCopyWith(
          DeviceInfo value, $Res Function(DeviceInfo) then) =
      _$DeviceInfoCopyWithImpl<$Res, DeviceInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'device_type', fromJson: convertDeviceType)
      DeviceType? deviceType,
      @JsonKey(name: 'os_version') String? osVersion,
      @JsonKey(name: 'device_model') String? deviceModel,
      @JsonKey(name: 'app_version') String? appVersion,
      @JsonKey(name: 'manufacturer') String? manufacturer,
      @JsonKey(name: 'branch') String? branch,
      @JsonKey(name: 'application_name') String? applicationName,
      @JsonKey(name: 'sdkInt') int? sdkInt});
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res, $Val extends DeviceInfo>
    implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? deviceType = freezed,
    Object? osVersion = freezed,
    Object? deviceModel = freezed,
    Object? appVersion = freezed,
    Object? manufacturer = freezed,
    Object? branch = freezed,
    Object? applicationName = freezed,
    Object? sdkInt = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType?,
      osVersion: freezed == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationName: freezed == applicationName
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkInt: freezed == sdkInt
          ? _value.sdkInt
          : sdkInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoImplCopyWith<$Res>
    implements $DeviceInfoCopyWith<$Res> {
  factory _$$DeviceInfoImplCopyWith(
          _$DeviceInfoImpl value, $Res Function(_$DeviceInfoImpl) then) =
      __$$DeviceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'device_type', fromJson: convertDeviceType)
      DeviceType? deviceType,
      @JsonKey(name: 'os_version') String? osVersion,
      @JsonKey(name: 'device_model') String? deviceModel,
      @JsonKey(name: 'app_version') String? appVersion,
      @JsonKey(name: 'manufacturer') String? manufacturer,
      @JsonKey(name: 'branch') String? branch,
      @JsonKey(name: 'application_name') String? applicationName,
      @JsonKey(name: 'sdkInt') int? sdkInt});
}

/// @nodoc
class __$$DeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoImpl>
    implements _$$DeviceInfoImplCopyWith<$Res> {
  __$$DeviceInfoImplCopyWithImpl(
      _$DeviceInfoImpl _value, $Res Function(_$DeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? deviceType = freezed,
    Object? osVersion = freezed,
    Object? deviceModel = freezed,
    Object? appVersion = freezed,
    Object? manufacturer = freezed,
    Object? branch = freezed,
    Object? applicationName = freezed,
    Object? sdkInt = freezed,
  }) {
    return _then(_$DeviceInfoImpl(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType?,
      osVersion: freezed == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationName: freezed == applicationName
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkInt: freezed == sdkInt
          ? _value.sdkInt
          : sdkInt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceInfoImpl implements _DeviceInfo {
  _$DeviceInfoImpl(
      {@JsonKey(name: 'device_id') this.deviceId,
      @JsonKey(name: 'device_type', fromJson: convertDeviceType)
      this.deviceType,
      @JsonKey(name: 'os_version') this.osVersion,
      @JsonKey(name: 'device_model') this.deviceModel,
      @JsonKey(name: 'app_version') this.appVersion,
      @JsonKey(name: 'manufacturer') this.manufacturer,
      @JsonKey(name: 'branch') this.branch,
      @JsonKey(name: 'application_name') this.applicationName,
      @JsonKey(name: 'sdkInt') this.sdkInt});

  factory _$DeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceInfoImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final String? deviceId;
  @override
  @JsonKey(name: 'device_type', fromJson: convertDeviceType)
  final DeviceType? deviceType;
  @override
  @JsonKey(name: 'os_version')
  final String? osVersion;
  @override
  @JsonKey(name: 'device_model')
  final String? deviceModel;
  @override
  @JsonKey(name: 'app_version')
  final String? appVersion;
  @override
  @JsonKey(name: 'manufacturer')
  final String? manufacturer;
  @override
  @JsonKey(name: 'branch')
  final String? branch;
  @override
  @JsonKey(name: 'application_name')
  final String? applicationName;
  @override
  @JsonKey(name: 'sdkInt')
  final int? sdkInt;

  @override
  String toString() {
    return 'DeviceInfo(deviceId: $deviceId, deviceType: $deviceType, osVersion: $osVersion, deviceModel: $deviceModel, appVersion: $appVersion, manufacturer: $manufacturer, branch: $branch, applicationName: $applicationName, sdkInt: $sdkInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.applicationName, applicationName) ||
                other.applicationName == applicationName) &&
            (identical(other.sdkInt, sdkInt) || other.sdkInt == sdkInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, deviceType, osVersion,
      deviceModel, appVersion, manufacturer, branch, applicationName, sdkInt);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      __$$DeviceInfoImplCopyWithImpl<_$DeviceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceInfoImplToJson(
      this,
    );
  }
}

abstract class _DeviceInfo implements DeviceInfo {
  factory _DeviceInfo(
      {@JsonKey(name: 'device_id') final String? deviceId,
      @JsonKey(name: 'device_type', fromJson: convertDeviceType)
      final DeviceType? deviceType,
      @JsonKey(name: 'os_version') final String? osVersion,
      @JsonKey(name: 'device_model') final String? deviceModel,
      @JsonKey(name: 'app_version') final String? appVersion,
      @JsonKey(name: 'manufacturer') final String? manufacturer,
      @JsonKey(name: 'branch') final String? branch,
      @JsonKey(name: 'application_name') final String? applicationName,
      @JsonKey(name: 'sdkInt') final int? sdkInt}) = _$DeviceInfoImpl;

  factory _DeviceInfo.fromJson(Map<String, dynamic> json) =
      _$DeviceInfoImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  String? get deviceId;
  @override
  @JsonKey(name: 'device_type', fromJson: convertDeviceType)
  DeviceType? get deviceType;
  @override
  @JsonKey(name: 'os_version')
  String? get osVersion;
  @override
  @JsonKey(name: 'device_model')
  String? get deviceModel;
  @override
  @JsonKey(name: 'app_version')
  String? get appVersion;
  @override
  @JsonKey(name: 'manufacturer')
  String? get manufacturer;
  @override
  @JsonKey(name: 'branch')
  String? get branch;
  @override
  @JsonKey(name: 'application_name')
  String? get applicationName;
  @override
  @JsonKey(name: 'sdkInt')
  int? get sdkInt;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
