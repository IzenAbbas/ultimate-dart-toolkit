class Animal {
  void sound() {
    print("Animal makes sound");
  }
}


class Dog extends Animal {
  @override
  void sound() {
    super.sound();
    print("Dog barks");
  }
}


void main() {
  Dog d = Dog();
  d.sound();
}