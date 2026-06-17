void main() {
  Future<int> immediateSuccess = Future.value(42);
  immediateSuccess.then((value) => print('Success value: $value'));

  Future<int> immediateFailure = Future.error(Exception('Invalid Data'));
  immediateFailure.catchError((err) {
    print('Caught error: $err');
    return -1;
  });

  Future.microtask(() {
    print('Microtask executed! (High priority)');
  });

  print('End of main()');
}