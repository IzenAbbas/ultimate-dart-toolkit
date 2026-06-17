class Person{
  final String name;
  Person(this.name);

}

void main(){
  Person p =Person("Izen");
  print(p.name);
  //p.name = "Abbas", Now, it is not allowed even though name is a public attribute.
}