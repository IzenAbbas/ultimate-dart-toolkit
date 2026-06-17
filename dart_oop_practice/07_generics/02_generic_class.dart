class Class<T>{
  T value;

  Class(this.value);
}

void main(){
  Class b1 = Class(1);
  print(b1.value);

  Class b2 = Class(2.5);
  print(b2.value);

  Class b3 = Class("Izen");
  print(b3.value);
}