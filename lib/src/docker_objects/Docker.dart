import 'package:dshell/dshell.dart';

class Docker {

  static bool isRunning() {
    if ('systemctl show --property ActiveState docker'.firstLine ==
        'ActiveState=inactive') {
      return false;
    }
    return true;
  }
}
