void main(){
  bool isAdmin = true;
  List<String> menu=[
    "Home",
    if (isAdmin) "Admin Panel"
  ];
  print(menu);

  List<int> numbers = [
    for (int i=1; i<=20; i++)
      if (i%2==0) i,
  ];
  print(numbers);
}