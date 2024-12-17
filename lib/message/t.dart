abstract class Message<T> {
  late final String camera;
  late final String microphone;
  late final String photo;
  late final String alarm;
  late final String gotoSetting;
  late final String cancel;
  late final String ok;

  String getMessageDined({String? messageType, String? applicationName});
}
