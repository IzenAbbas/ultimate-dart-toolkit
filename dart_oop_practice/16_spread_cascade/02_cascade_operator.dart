class Student{
  String? name;
  int? age;
}

void main(){
  Student student= Student()
      ..name="Izen"
      ..age=22;
  print(student.name);
  print(student.age=22);
}