//widget heirerchy
//example of composition
//use compositon to create complex ui


abstract class Widget{

}

class Text extends Widget{
  Text(this.text);
  final String text;
}

class Button extends Widget{
  Button({required this.child, this.onPressed});
  final Widget child;
  final void Function()? onPressed;
}

void main(){
  final button = Button(
    child: Text("hello"),
    onPressed: ()=>print('button presse')
    );

    print(button);
}