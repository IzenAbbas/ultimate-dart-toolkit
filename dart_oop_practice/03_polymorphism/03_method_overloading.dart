//Dart does not support traditional method overloading

class Calculator{
  int add (int a, int b, [int? c]){
    if(c==null){
      return a+b;
    }
    else return a+b+c;
  }
}

void main(){
  Calculator c = Calculator();
  print(c.add(1,2));
  print(c.add(1,2,3));
}