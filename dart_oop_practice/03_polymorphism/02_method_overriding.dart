class Animal{
  void sound(){
    print("Animal is making Sound.");
  }
}

class Dog extends Animal{
  @override
  void sound() {
    // TODO: implement sound
    print("Dog is Barking.");
  }
}

class Cat extends Animal{
  @override
  void sound() {
    // TODO: implement sound
    print("Cat is meowing.");
  }
}

void main(){
  Animal a = Animal();
  a.sound();
  Dog d = Dog();
  d.sound();
  Cat c = Cat();
  c.sound();
}