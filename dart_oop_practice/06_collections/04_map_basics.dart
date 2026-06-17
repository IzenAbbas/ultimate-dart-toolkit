void main(){
  Map<String, String> students = {
    "name": "Izen",
    "city": "Lahore"
  };
  print(students);

  print(students["name"]);

  students["gender"]= "Male";
  print(students);

  students["name"]="Abbas";
  print("Students");
}