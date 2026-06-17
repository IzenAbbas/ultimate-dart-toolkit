class Calculator{
  static int sum(int a, int b){
    return a+b;
  }
}

void main(){
  print(Calculator.sum(1,2));
  print(Calculator.sum(3,4));
}