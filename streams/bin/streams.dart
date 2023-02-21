import 'dart:async';

void main() {
  final StreamController streamController = StreamController();
  Timer.periodic(const Duration(seconds: 1), (timer) {
    streamController.add(timer.tick);
  });
  streamController.stream.listen((event) {
    print(event);
  });
}
