enum UserRole{
  admin("Administrator", 10),
  editor("Editor", 5),
  Viewer("Viewer", 1);

  final String title;
  final int permission;
  const UserRole(this.title, this.permission);
}

void main(){
  UserRole u = UserRole.admin;
  print(u.title);
  print(u.permission);
}