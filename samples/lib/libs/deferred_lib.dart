import 'dart:async';
import 'dart:html' deferred as htmlLibrary;

class DeferredLibTest{
  String myElementContent;

  DeferredLibTest(){
    new Future.delayed(new Duration(seconds: 2)).then(loadHtmlElement);
  }

  Future loadHtmlElement(_) async{
    myElementContent = await getElementContent("myElementId");
  }

  Future<String> getElementContent(String id) async{
    await htmlLibrary.loadLibrary();                    // Lib htmlLibrary is initiated here
    return htmlLibrary.querySelector("#$id").innerHtml;
  }
}