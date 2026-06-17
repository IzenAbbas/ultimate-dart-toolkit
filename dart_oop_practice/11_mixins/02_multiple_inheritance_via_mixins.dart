mixin Flyable{
  void fly(){
    print("Flying");
  }
}
mixin Swimmable{
  void swim(){
    print("Swimmable");
  }
}
class Duck with Flyable, Swimmable{}

void main(){
  Duck d= Duck();
  d.swim();
  d.fly();
}