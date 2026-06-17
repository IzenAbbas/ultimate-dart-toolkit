void main() async {
  print("1. Starting process");
  try {
    String user = await login();
    print("2. Login successful: $user");
    String data = await getProfile();
    print("3. Profile: $data");
  } catch (error) {
    print("Error: $error");
  }
  print("4. Process finished");
}


Future<String> login() async {
  await Future.delayed(Duration(seconds: 2));
  return "Admin";
}

Future<String> getProfile() async {
  await Future.delayed(Duration(seconds: 2));
  return "Age: 20, Role: User";
}