void main(){
  List<int> numbers1 = [1,2,3]; //Mutable
  numbers1.add(4);
  print(numbers1);

  const List<int> numbers2 = [1,2,3]; //Immutable
  try{
    numbers2.add(4);
  }
  catch(e){
    print("Modification on memory not possible");
  }//This must throw an error
  print(numbers2);
}