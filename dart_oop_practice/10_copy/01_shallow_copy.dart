class Address{
  String city;
  Address(this.city);
}

class Student{
  String name;
  Address address;
  Student(this.name, this.address);
}

void main(){
  Address address = Address("Lahore");
  Student s1= Student("Izen Abbas", address);
  Student s2=Student(s1.name, s1.address);
  s2.address.city="Karachi";

  print(s1.name);
  print(s1.address.city);
}