import "dart:math";

abstract class Shape{
  double get parimeter;

}

class Square extends Shape{
  Square(this.side);
  final double side;
  @override
  double get parimeter => 4 * side;
}

class Circle extends Shape{
  Circle(this.radius);
  final double radius;

  @override
  double get parimeter => 2 * pi * radius;
}

void printParimeter(Shape shape){
  print(shape.parimeter);
}



void main(){
  final circle = Circle(5);
  final square = Square(4);

  // printParimeter(circle);
  // printParimeter(square);

  final list =<Shape>[
    circle,
    square
  ];

  for(var v in list){
    printParimeter(v);
  }

}