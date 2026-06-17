import 'dart:async';

void main() {
  StreamController<int> controller = StreamController<int>.broadcast();

  Stream<int> broadcastStream = controller.stream;

  broadcastStream.listen((value) => print('listener A: $value'));
  broadcastStream.listen((value) => print('listener B: $value'));
  broadcastStream.listen((value) => print('listener C: $value'));

  controller.add(10);
  controller.add(20);
  controller.add(30);

  controller.close();
}