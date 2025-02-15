///. FACTORY CONSTRUCTOR
///( common use case : parsing json dat)
/// ... for / usefull
/// implement a constructor that doesnt always create a new instane of its class
/// Initialize a final variable using logic that cant be handled in the initializer list
//

import 'dart:math';

abstract class Shape{
  double get area;
  const Shape();

  factory Shape.fromJson(Map<String, Object> json){
    final type = json['type'];
    switch(type){
      case'square':
        final side = json['side'];
        if(side is double){
          return Square(side);
        }
        throw UnsupportedError('Invalid or missing side');

      case 'circle':
        final radius = json['radius'];
        if(radius is double){
          return Circle(radius);
        }
        throw UnsupportedError('invalid or missing radious');

      default:
      throw UnimplementedError('shape $type not recognized');
    }
  }
}

class Square extends Shape{
  const Square(this.side);
  final double side;

  @override
  double get area => side * side; 
}

class Circle extends Shape{
  const Circle(this. radius);
  final double radius;

  @override
  double get area => pi * radius *radius;
}

void printArea(Shape shape){

  print(shape.area);
}


void main(){
  // final circle = Circle(1.5);
  // printArea(circle);

  // final square = Square(2);
  // printArea(square);
  final shapeJson=[
    {
      'type':'square',
      'side':2.0
    },
    {
      'type':'circle',
      'radius':2.0
    }
  ];
  final shapes = shapeJson.map((shapeJson) =>Shape.fromJson(shapeJson) );

  shapes.forEach(printArea);
}