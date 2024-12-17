import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dialog.dart';
import 'message/en.dart';
import 'message/t.dart';
import 'message/vi.dart';
import 'model/device_info.dart';

class PermissionRequest {
  factory PermissionRequest() => _singleton ??= PermissionRequest._();

  PermissionRequest._();

  static PermissionRequest? _singleton;
  BuildContext? _context;
  DeviceInfo? _deviceInfo;

  void initialize(
      {required BuildContext parentContext, required DeviceInfo deviceInfo}) {
    _context = parentContext;
    _deviceInfo = deviceInfo;
  }

  Future<bool> requestMicroPermission({Lang? lang}) async {
    var permissionResult = await Permission.microphone.status;
    switch (permissionResult) {
      case PermissionStatus.limited:
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.restricted:
      case PermissionStatus.provisional:
      case PermissionStatus.denied:
        permissionResult = await Permission.microphone.request();
        break;
      case PermissionStatus.permanentlyDenied:
        return false;
    }
    switch (permissionResult) {
      case PermissionStatus.limited:
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.provisional:
      case PermissionStatus.permanentlyDenied:
        late Message message;
        switch (lang) {
          case Lang.vi:
            message = MessageViPermission();
            break;
          default:
            message = MessageEnPermission() as Message;
            break;
        }
        _gotoSettingDialog(msType: 'Micro', me: message);
        break;
    }
    return false;
  }

  Future<bool> requestAlarmPermission(
      {bool isShowGoToSetting = true, Lang? lang}) async {
    PermissionStatus status = await Permission.scheduleExactAlarm.status;
    switch (status) {
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.limited:
      case PermissionStatus.provisional:
        status = await Permission.scheduleExactAlarm.request();
        break;
      case PermissionStatus.permanentlyDenied:
        return false;
    }
    switch (status) {
      case PermissionStatus.limited:
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.permanentlyDenied:
      case PermissionStatus.provisional:
        if (isShowGoToSetting) {
          late Message message;
          switch (lang) {
            case Lang.vi:
              message = MessageViPermission();
              break;
            default:
              message = MessageEnPermission();
              break;
          }
          _gotoSettingDialog(msType: 'Alarm', me: message);
        }
        break;
    }
    return false;
  }

  Future<bool> requestCameraPermission({String? content, Lang? lang}) async {
    PermissionStatus status = await Permission.camera.status;
    switch (status) {
      case PermissionStatus.limited:
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.provisional:
        status = await Permission.camera.request();
        break;
      case PermissionStatus.permanentlyDenied:
        return false;
    }
    switch (status) {
      case PermissionStatus.limited:
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.permanentlyDenied:
      case PermissionStatus.provisional:
        late Message message;
        switch (lang) {
          case Lang.vi:
            message = MessageViPermission();
            break;
          default:
            message = MessageEnPermission();
            break;
        }
        _gotoSettingDialog(msType: 'Camera', me: message);
        return false;
    }
  }

  Future _gotoSettingDialog({required Message me, String? msType}) async {
    final String ms = me.getMessageDined(
        applicationName: _deviceInfo?.applicationName ?? '',
        messageType: msType);
    // '$msType đã bị từ chối truy cập. Để sử dụng tính năng này, ${_deviceInfo?.applicationName ?? ''} cần cấp quyền truy cập vào $msType. Bạn có muốn đi đến cài đặt không?';
    String yes = me.gotoSetting;
    String no = me.cancel;
    final result = await showYesNoDialog(
        context: _context!,
        title: '',
        content: ms,
        showYes: true,
        showNo: true,
        noActionText: no,
        yesActionText: yes,
        isRootNavigator: true);
    if (result) {
      openAppSettings();
    }
  }

  Future<bool> requestPhotoPermission({Lang? lang}) async {
    /// if (Platform.isAndroid) {
    ///   final androidInfo = await DeviceInfoPlugin().androidInfo;
    ///   if (androidInfo.version.sdkInt <= 32) {
    ///     use [Permissions.storage.status]
    ///   }  else {
    ///     use [Permissions.photos.status]
    ///   }
    /// }
    late PermissionStatus status;

    if (Platform.isAndroid && (_deviceInfo?.sdkInt ?? 0) <= 32) {
      status = await Permission.storage.status;
    } else {
      status = await Permission.photos.status;
    }
    switch (status) {
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.limited:
      case PermissionStatus.provisional:
        if (Platform.isAndroid && (_deviceInfo?.sdkInt ?? 0) <= 32) {
          status = await Permission.storage.request();
        } else {
          status = await Permission.photos.request();
        }
        break;
      case PermissionStatus.permanentlyDenied:
        return false;
    }

    switch (status) {
      case PermissionStatus.limited:
      case PermissionStatus.granted:
        return true;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.permanentlyDenied:
      case PermissionStatus.provisional:
        late Message message;
        switch (lang) {
          case Lang.vi:
            message = MessageViPermission();
            break;
          default:
            message = MessageEnPermission();
            break;
        }
        _gotoSettingDialog(msType: 'Photos', me: message);
        return false;
    }
  }

  Future<bool> showDialogPermission({
    required PermissionType type,
    String customMessage = '',
    Lang? lang,
  }) async {
    try {
      PermissionStatus? status;
      String msType = '';
      late Message message;
      switch (lang) {
        case Lang.vi:
          message = MessageViPermission();
          break;
        default:
          message = MessageEnPermission();
          break;
      }
      switch (type) {
        case PermissionType.camera:
          msType = message.camera;
          status = await Permission.camera.status;
          break;
        case PermissionType.microphone:
          msType = message.microphone;
          status = await Permission.microphone.status;
          break;
        case PermissionType.photo:
          msType = message.photo;
          status = await Permission.photos.status;
          break;
        case PermissionType.alarm:
          msType = message.alarm;
          status = await Permission.scheduleExactAlarm.status;
          break;
      }
      switch (status) {
        case PermissionStatus.limited:
        case PermissionStatus.granted:
          return true;
        case PermissionStatus.denied:
        case PermissionStatus.restricted:
        case PermissionStatus.provisional:
          break;
        case PermissionStatus.permanentlyDenied:
          _gotoSettingDialog(msType: msType, me: message);
          return false;
      }
      if (customMessage.isNotEmpty) {
        final rs = await showYesNoDialog(
            context: _context!,
            title: '',
            content: customMessage,
            showYes: true,
            yesActionText: message.ok,
            showNo: true,
            noActionText: message.cancel,
            isRootNavigator: false);
        if (rs == false) {
          return false;
        }
      }
      switch (type) {
        case PermissionType.camera:
          return await requestCameraPermission();
        case PermissionType.microphone:
          return await requestMicroPermission();
        case PermissionType.photo:
          return await requestPhotoPermission();
        case PermissionType.alarm:
          return await requestAlarmPermission();
      }
    } catch (e) {
      Logger().e(e);
      return false;
    }
  }
}

enum PermissionType { camera, microphone, photo, alarm }

enum Lang { en, vi }
