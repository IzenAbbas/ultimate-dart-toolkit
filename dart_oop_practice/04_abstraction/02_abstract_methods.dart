abstract class Shape{
  void shapeInfo(){
    print('My shape is not specified yet. It totally depends on the child class.');
  }
}

class Circle extends Shape{
  @override
  void shapeInfo() {
    // TODO: implement shapeInfo
    super.shapeInfo();
    print("Now, my shape is specified as Circle.");
  }
}

class Square extends Shape{
  @override
  void shapeInfo() {
    // TODO: implement shapeInfo
    super.shapeInfo();
    print("Now, my shape is specified as Square.");
  }
}

void main(){
  Circle c =Circle();
  Square s = Square();
  c.shapeInfo();
  s.shapeInfo();
}