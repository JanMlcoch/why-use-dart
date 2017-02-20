library library;

import 'dart:convert';
import 'dart:html' show KeyCode;
import 'dart:async' as async;
import 'dart:math' hide Random;
import 'package:dart/libs/to_export.dart' as imported hide MyOtherClass;

class TestLib{
  TestLib(){
    int random = new Random().nextInt(100);           // class Random (from lib "math") is hidden (not available)
    int random2 = new imported.Random().nextInt(100); // class Random is available from lib "imported"
    print(cos(3.14));                                 // getter cos is part of lib "math"
    print(KeyCode.ENTER);                             // class KeyCode is only available class from lib "html"
    async.StreamController controller = new async.StreamController(); // class StreamController is part of lib "async"
    new imported.ToExport();
  }
}