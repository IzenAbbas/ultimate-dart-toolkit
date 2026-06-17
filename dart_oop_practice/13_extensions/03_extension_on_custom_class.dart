class Student {
  String name;
  double cgpa;
  Student(this.name, this.cgpa);
}

extension StudentExtension on Student{
  bool isTopper(){
    return cgpa>=3.5;
  }
}

void main(){
  Student s= Student("Izen", 3.8);
  print(s.isTopper());
}