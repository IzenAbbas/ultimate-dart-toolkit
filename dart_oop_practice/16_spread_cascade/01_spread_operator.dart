void main(){
  List<String> fruits = ["Apple", "banana"];
  List<String> vegetables = ["Potato", "Tomato"];

  List <String> items = [
    ...fruits,
    ...vegetables
  ];

  print(items);


  Map<String, int> marks1 = {
    "Math": 90,
  };
  Map<String, int> marks2 = {
    "English": 80,
  };
  Map<String, int> marks = {
    ...marks1,
    ...marks2,
  };
  print(marks);
}