class BaseEntity {}
mixin PersonInfo {
  String name = "Izen";
}

mixin Greetings on BaseEntity, PersonInfo {
  void sayHello() {
    print("Hello");
  }

  void customGreeting();
}
class User extends BaseEntity with PersonInfo, Greetings {
  @override
  void customGreeting() {
    print('Hi, from $name');
  }
}

void main() {
  final user = User();
  user.sayHello();
  user.customGreeting();
}