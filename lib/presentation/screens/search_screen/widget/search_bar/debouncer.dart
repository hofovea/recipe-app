import 'dart:async';
import 'dart:ui';

class Debouncer {
  int repeatEveryMillis = 500;
  VoidCallback? action;
  Timer? timer;

  run(VoidCallback action) {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(
      Duration(milliseconds: repeatEveryMillis),
      action,
    );
  }

  void stop() {
    timer?.cancel();
  }
}