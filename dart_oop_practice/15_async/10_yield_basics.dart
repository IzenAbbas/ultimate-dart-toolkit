Iterable<int> countUp(int max) sync* {
  for (int i = 1; i <= max; i++) {
    yield i;
  }
}

Iterable<int> evenNumbers(int max) sync* {
  for (int i = 0; i <= max; i += 2) {
    yield i;
  }
}

Iterable<int> fibonacci(int count) sync* {
  int a = 0;
  int b = 1;
  for (int i = 0; i < count; i++) {
    yield a;
    int temp = a + b;
    a = b;
    b = temp;
  }
}

void main() {
  print(countUp(5).toList());
  print(evenNumbers(10).toList());
  print(fibonacci(8).toList());
}