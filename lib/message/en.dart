
import './t.dart';
class MessageEnPermission extends Message {
  @override
  final String camera = 'Camera';
  @override
  final String microphone = 'Microphone';
  @override
  final String photo = 'Photos';
  @override
  final String alarm = 'Alarm';
  @override
  final String gotoSetting = 'Go to settings';
  @override
  final String cancel = 'Cancel';

  @override
  final String ok = 'Continue';

  @override
  String getMessageDined({String? messageType, String? applicationName}) {
    return '${messageType ?? ''} access has been denied. To use this feature, $applicationName needs to grant access to the ${messageType ?? ''}. Would you like to go to settings?';
  }
}
