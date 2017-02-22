import 'dart:async';
import 'dart:html';

//Futures
class DataObject{}

class FutureTest{
  Future<DataObject> makeThisAsynchronously() async {
    DataObject data = await doSomeDataOperation();
    //After data are set continue
    await new Future.delayed(Duration.ZERO) .then((_) => doSomeStuff());
    return data;
  }

  Future<DataObject> doSomeDataOperation() async{
    // Request data
  }

  void doSomeStuff(){}
}


//Async with try..catch
class AsyncTryCatchTest{
  Future makeThisAsynchronously() async {
    try{
      DataObject data = await doSomeDataOperation();
      runWithData(data);
    }catch(e){
      runWithoutData();
    }
  }

  Future<DataObject> doSomeDataOperation() async{
    // Request data
  }

  void runWithData(DataObject data){}

  void runWithoutData(){}
}


//Async for
class Envelope{}

class AsyncForTest{
//  The value of requestServer must have type Stream
  var requestServer;

  Future makeThisAsynchronously() async{
    await for (var request in requestServer) {
      handleRequest(request);
    }
  }

  void handleRequest(Envelope request){}
}



//Streams
class Event{}
class StreamTest{
  static StreamController<Event> controller = new StreamController<Event>();
  Stream<Event> stream = controller.stream;
  Stream<Event> broadcastStream = controller.stream.asBroadcastStream();

  StreamTest(){
    controller.add(new Event());

    StreamSubscription<Event> subscriptionSingle = stream.listen((Event data){
      print(data);
    });
    StreamSubscription<Event> subscriptionBroadcast = broadcastStream.listen((Event data){
      print(data);
    });
  }
}
