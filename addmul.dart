import 'dart:math';

class Point{
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString() => 'Point($x,$y)';

  Point operator +(covariant Point other){

    return Point(x+other.x, y+other.y);
  }

  Point operator *(covariant Point other){
    return Point(x*other.x,y*other.y);
  }
}

void main(){
  //final point = Point(x, y);

  print(Point(3, 4)+Point(2,3));
  print(Point(2, 3)*Point(3,4));

}