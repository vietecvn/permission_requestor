import './t.dart';
class MessageViPermission extends Message {
  @override
  final String camera = 'Máy ảnh';
  @override
  final String microphone = 'Mic';
  @override
  final String photo = 'Albums';
  @override
  final String alarm = 'Alarm';
  @override
  final String gotoSetting = 'Đi tới cài đặt';
  @override
  final String cancel = 'Huỷ';

  @override
  final String ok = 'Ok';

  @override
  String getMessageDined({String? messageType, String? applicationName}) {
    return '${messageType ?? ''} đã bị từ chối truy cập. Để sử dụng tính năng này, $applicationName cần cấp quyền truy cập vào ${messageType ?? ''}. Bạn có muốn đi đến cài đặt không?';
  }
}
