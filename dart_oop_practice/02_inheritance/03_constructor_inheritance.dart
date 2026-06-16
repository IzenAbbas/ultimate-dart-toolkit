class GrandParent {
  String name;
  GrandParent(this.name) {
    print("GrandParent constructor called");
  }
}

class Parent extends GrandParent {
  Parent(String name) : super(name) {
    print("Parent constructor called");
  }
}

class Child extends Parent {
  Child(String name) : super(name) {
    print("Child constructor called");
  }
}

void main() {
  Child obj = Child("Izen");
}