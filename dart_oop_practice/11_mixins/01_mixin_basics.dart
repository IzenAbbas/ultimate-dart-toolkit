mixin Swimmable{
  void swim(){
    print('Swimming');
  }
}

class Duck with Swimmable{}

void main(){
  Duck d = Duck();
  d.swim();
}