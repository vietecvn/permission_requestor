import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_info.g.dart';

part 'device_info.freezed.dart';

@freezed
abstract class DeviceInfo with _$DeviceInfo {
  factory DeviceInfo({
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'device_type', fromJson: convertDeviceType)
    DeviceType? deviceType,
    @JsonKey(name: 'os_version') String? osVersion,
    @JsonKey(name: 'device_model') String? deviceModel,
    @JsonKey(name: 'app_version') String? appVersion,
    @JsonKey(name: 'manufacturer') String? manufacturer,
    @JsonKey(name: 'branch') String? branch,
    @JsonKey(name: 'application_name') String? applicationName,
    @JsonKey(name: 'sdkInt') int? sdkInt,
  }) = _DeviceInfo;

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);
}

enum DeviceType { android, ios, web }

DeviceType? convertDeviceType(json) {
  switch (json) {
    case 1:
      return DeviceType.ios;
    case 2:
      return DeviceType.android;
  }
  return null;
}
