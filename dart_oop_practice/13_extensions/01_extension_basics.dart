extension numberExtension on int{
  bool isEvenNumber(){
    return this%2==0;
  }
}


void main(){
  int i =4;
  print(i.isEvenNumber());
}