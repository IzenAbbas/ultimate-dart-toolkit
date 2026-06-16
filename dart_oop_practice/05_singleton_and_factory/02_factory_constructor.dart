class User{
  String name;

  User(this.name);

  factory User.guest(){
    return User("Guest");
  }
}

void main(){
  User u =User.guest();
  print(u.name);
}