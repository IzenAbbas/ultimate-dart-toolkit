import 'dart:async';

Stream<int> ticker(int count) async* {
  for (int i = 1; i <= count; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}

Stream<String> fetchPages(List<String> urls) async* {
  for (String url in urls) {
    await Future.delayed(Duration(milliseconds: 300));
    yield 'response from $url';
  }
}

Stream<int> naturalsUntil(int max) async* {
  int i = 1;
  while (i <= max) {
    yield i;
    if (i == 3) yield* Stream.fromIterable([100, 200]);
    i++;
  }
}

void main() async {
  await for (int tick in ticker(4)) {
    print('tick: $tick');
  }

  List<String> urls = ['api/users', 'api/posts', 'api/comments'];
  await for (String response in fetchPages(urls)) {
    print(response);
  }
  await for (int n in naturalsUntil(5)) {
    print(n);
  }
}