// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) => _DeviceInfo(
      deviceId: json['device_id'] as String?,
      deviceType: convertDeviceType(json['device_type']),
      osVersion: json['os_version'] as String?,
      deviceModel: json['device_model'] as String?,
      appVersion: json['app_version'] as String?,
      manufacturer: json['manufacturer'] as String?,
      branch: json['branch'] as String?,
      applicationName: json['application_name'] as String?,
      sdkInt: (json['sdkInt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DeviceInfoToJson(_DeviceInfo instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'device_type': _$DeviceTypeEnumMap[instance.deviceType],
      'os_version': instance.osVersion,
      'device_model': instance.deviceModel,
      'app_version': instance.appVersion,
      'manufacturer': instance.manufacturer,
      'branch': instance.branch,
      'application_name': instance.applicationName,
      'sdkInt': instance.sdkInt,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.android: 'android',
  DeviceType.ios: 'ios',
  DeviceType.web: 'web',
};
