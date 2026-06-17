import 'dart:async';

Stream<String> messageStream() async* {
  yield 'first';
  yield 'second';
  yield 'third';
}

void main() {
  Stream<String> stream = messageStream();

  StreamSubscription<String> subscription = stream.listen(
        (value) => print('received: $value'),
    onError: (e) => print('error: $e'),
    onDone: () => print('stream closed'),
  );

  Future.delayed(Duration(milliseconds: 100), () {
    subscription.cancel();
    print('subscription cancelled');
  });
}