// generics -> more reusable code
// very common with functional operators (map, where, reduce
//exp :stack class

// this is a good example of composition

// A stack -> HAs-A list (composition)
// A Square is -a shape (inheritance) in shape class we use previois class

class Stack<T>{
  final List<T> _item=[];// private member

  // for add element in list
  void push(T item) => _item.add(item);

  // for remove element from list

  T pop()=>_item.removeLast();


}

void main(){
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);

  print(stack.pop());

  final name =Stack<String>();
  name.push('Pb');
  name.push('rv');
 
}
///... in flutter we use composition havily to discribe the application UI
///.. in flutter everything is Widget
///