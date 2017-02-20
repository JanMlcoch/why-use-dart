import 'dart:html';

class Test {
  String get loo => "loo";

  Test() {
    querySelector('#button')    // Get an object.
      ..text = 'Confirm'        // Use its members.
      ..classes.add('important')
      ..onClick.listen((e) => window.alert('Confirmed!'));



    String boo = "boo";
    String foo = "foooooo";
//    String get loo => "loo";
    String mix = "my${boo}${foo.substring(0,3)}$loo";
    print(mix); // myboofooloo

  }



}
