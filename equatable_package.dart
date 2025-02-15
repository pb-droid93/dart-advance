// equatable package to check 2 object are same hash code or not 
// use equatable only immutable classes
// all member varible must be final
import 'package:equatable/equatable.dart';

class Point extends Equatable{
  Point(this.x, this.y);

  final int x;
  final int y;

  @override
  List<Object?> get props =>[x,y];

  @override
  bool get stringify => true;
  // @override
  // String toString()=> 'Point($x,$y)';

  bool operator ==(covariant Point other){
    return x == other.x && y== other.y;
  }

  // adding 2 objects
  Point operator +(covariant Point other){
    return Point(x+other.x, y+other.y);
  }

  // multiply 2 objects

  Point operator *(covariant Point other){
    return Point(x*other.x, y*other.y);
  }
}


void main(){
  print(Point(2, 2)==Point(2,2));
  print(Point(2, 3)*Point(3,4));
  print(Point(3,4)+Point(4,5));
}