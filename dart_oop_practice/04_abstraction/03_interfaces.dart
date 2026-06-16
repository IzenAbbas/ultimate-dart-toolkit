// A simple abstract attached to its child via implement(its all methods must be overridden in the child)

abstract class Shape{
  void shapeInfo(){
    print("I am just a shape will be specified by the child.");
  }

  double calculateArea(double a, [double? b]);
}

class Circle implements Shape{
  @override
  double calculateArea(double r, [double? b]) {
    if (b!=null){
      throw "Invalid Arguments";
    }
    // TODO: implement calculateArea
    return 3.14*r*r;
  }

  @override
  void shapeInfo() {
    // TODO: implement shapeInfo
    print("I am a circle");
  }
}

class Square implements Shape{
  @override
  double calculateArea(double l, [double? w]) {
    if (w==null){
      throw "Invalid Arguments";
    }
    // TODO: implement calculateArea
    return (l*w).toDouble();
  }

  @override
  void shapeInfo() {
    // TODO: implement shapeInfo
    print("I am a circle");
  }
}

void main() {
  Circle myCircle = Circle();
  myCircle.shapeInfo();
  print("Area of circle with radius 5: ${myCircle.calculateArea(5)}");
  Square mySquare = Square();
  mySquare.shapeInfo();
  print("Area of square with sides 4 and 5: ${mySquare.calculateArea(4, 5)}");
}