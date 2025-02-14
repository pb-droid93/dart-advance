//tostring()
//very useful for debugging
//override it to define a string epresentation of your own classes
// already implemented by built in type

class Point{
  const Point(this.x,this.y);
  final int x;
  final int y;

  @override
  String toString()=> 'Point($x,$y)';

  //equality operatoe
  @override
  bool operator ==(covariant Point other){//coverient operatior for type missmatch in commpile time 
    //if(other is Point){
      return x== other.x && y == other.y;
    //}
    //return false;

  }
}

void main(){
//   final list ={1,2,3,4};
//   print(list);
// print(Point(1,2));
// const list = [Point(1, 3),Point(4, 2)];
// print(list);

//...equality operator

  print(5==5);//true
  print(Point(0, 0)==Point(0,0));//false
  //.. dart doesnt know how to compare instance of point
  // unless we tell it how to do it with equality operator


}
