//abstract classes
// are classes that can not be intantiated 

// can use abstract class to define an interface that can be implemented by sub class
import "dart:math";


abstract class Shape{
  double get area;
  

}

//subclass
class Square extends Shape{
  Square(this.side);
  final double side;
  @override
  double get area => side * side;
}

//sub class
class Circle extends Shape{
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape){
  print(shape.area);
}

void main(){
  //final shape = Shape();
  final square = Square(10);
 // print(square.area);
 printArea(square);

 final circle = Circle(5);

 printArea(circle);
}

// it allows us Dependancy Inversion Principle

///.. code with abstraction  to be independent from specific implementation
///.. often a good idea to code against 
///.. abstract interface vs concrete implementations

