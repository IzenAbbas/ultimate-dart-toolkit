void main(){
  List<String> fruits = ["Apple", "Banana", "Mango"];
  print(fruits);

  //Accessing Elements
  print(fruits[0]);
  print(fruits[1]);

  //Adding Elements
  fruits.add('Orange');
  print(fruits);

  //Removing Elements
  fruits.remove("Orange");
  print(fruits);
  fruits.removeAt(1);
  print(fruits);

}