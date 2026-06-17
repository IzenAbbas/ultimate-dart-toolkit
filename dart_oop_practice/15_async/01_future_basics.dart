void main() {
  Future<String> myString = Future.delayed(Duration(seconds: 2), () {
    return "My String is Returned";
  });

  myString.then((value) {
    print("Returned Value: $value");
  }).catchError((error) {
    print("Error Occurred: $error");
  }).whenComplete(() => print("Future Wrapped Up."));
}