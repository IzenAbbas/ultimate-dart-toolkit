import 'dart:async';

void main() async {
  Stream<int> fromIterable = Stream.fromIterable([1, 2, 3, 4, 5]);
  await fromIterable.forEach((v) => print('iterable: $v'));

  Stream<int> fromFuture = Stream.fromFuture(Future.value(42));
  await fromFuture.forEach((v) => print('future: $v'));

  Stream<int> periodic = Stream.periodic(Duration(milliseconds: 300), (i) => i * 2).take(4);
  await periodic.forEach((v) => print('periodic: $v'));

  Stream<int> piped = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
      .where((n) => n.isEven)
      .map((n) => n * n)
      .take(3);

  await piped.forEach((v) => print('piped: $v'));
}