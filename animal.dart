//sub classes
// inheritance in oops

class Animal{

  final int age;
  Animal({required this.age});

  void sleep()=> print('sleep');
}

class Dog extends Animal{
  Dog({required int age}) : super(age:age);
  void bark()=> print('bark');

  //method ovverriding
  //overiding the sleep methosd
  @override
  void sleep(){
    super.sleep();
     print('dog : sleep');
  }
}

class Cow extends Animal{
    Cow({required int age}) : super(age:age);

  void moo()=> print('moo');
}

class ClaverDog extends Dog{
      ClaverDog({required int age}) : super(age:age);

  void catchBall()=> print('catch ball');
}

void main(){
  final animal = Animal(age:18);
  animal.sleep();
  final dog = Dog(age:20);
  dog.bark();
  dog.sleep();//because dog extands animal class

  final cow = Cow(age:12);

  cow.moo();
  cow.sleep();

  // final claver = ClaverDog(age:10);
  // claver.catchBall();
  // claver.bark();
  // claver.sleep();
}

// when and how to use sub classess

//...not always easy
///...subclasses is not alwas the right solution
///....alternative ::: Composition