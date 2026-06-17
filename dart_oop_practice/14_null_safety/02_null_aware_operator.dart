void main(){
  String? name;
  try {
    print(name!.length);
  } catch (e) {
    print("Trying to find length of null name");
  }
  print(name?.length);
}