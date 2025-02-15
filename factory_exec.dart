class Person{
  Person({required this. name, required this.age});
  final String name;
  final int age;

  factory Person.fromJson(Map<String, Object> json){
    final pName = json['name'];
    final pAge = json['age'];
    if(pName is String && pAge is int){
      return Person(name: pName, age:pAge);
    }
    throw UnimplementedError('$pName or $pName is un supported type');
  } 

  // to json method

  Map<String, Object> toJson()=>{
    'name':name,
    'age':age,
  };

}

void main(){
  final person =Person.fromJson(
    {
      'name':'pb',
      'age':31,
    }
  );

  final json = person.toJson();
  print(json);
}