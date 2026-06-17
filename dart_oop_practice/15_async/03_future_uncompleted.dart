import 'dart:async';
void main() {
  print("Requesting data...");
  fetchData().then((value) {
    print("Received: $value");
  }).catchError((error) {
    print("Error: $error");
  });
}


Future<String> fetchData() {
  Completer<String> completer = Completer<String>();
  Future.delayed(Duration(seconds: 2), () {
    bool success = true;
    if (success) {
      completer.complete("User Data Loaded");
    } else {
      completer.completeError("Failed to load data");
    }
  });
  return completer.future;
}