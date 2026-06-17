class Student{
  String name;
  Student(this.name);

  static String school = "Fast";
}

void main(){
  Student s1=Student("Izen Abbas");
  Student s2=Student("Ahmed Ali");

  print("${s1.name} and ${s2.name} studies at ${Student.school}");
}
