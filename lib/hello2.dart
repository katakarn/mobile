// Top-level functions
void main() {
  var hello = new Hello('Flutter');
  Hello.say();
  hello.say2();
}

class Hello {
  final String? text;
  // Hello(String t) {
  //   this.text = t;
  // }
  Hello(this.text);
  static void say({String text = 'World'}) {
    print('Hello $text');
  }
  void say2() {
    print('Hello $text');
  }
}

// void sayHello(String text, {String text2 = 'ios'}) {
//   print('Hello ${text.toUpperCase()} ${text2.toLowerCase()}');
// }
