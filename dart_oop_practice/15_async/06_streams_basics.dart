import 'dart:async';

Stream<int> basicStream() async* {
  yield 1;
  yield 2;
  yield 3;
}

void main() async {
  await for (int value in basicStream()) {
    print(value);
  }


  // Old yet equivalent way of achieving the same thing.
  // basicStream().listen(
  //       (value) => print('listen: $value'),
  //   onDone: () => print('done'),
  // );
}