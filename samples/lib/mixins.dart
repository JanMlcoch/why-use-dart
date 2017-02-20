//Mixins
class Vehicle{
  // Some vehicle stuff
}

abstract class ManufacturedItem{
  bool get isConstructionFinished => false; // Returns true if manufactured item is finished
}

class Deliverable{
  Duration getTimeToDeliver(var address){
    // Returns time needed for deliver goods to received address
  }
}

class Car extends Vehicle with ManufacturedItem, Deliverable{
  Duration timeToDeliver(String address){
    if(isConstructionFinished){
      return getTimeToDeliver(address);
    } else{
      // TODO @Rene: implement this to return a value
      return null;
    }
  }
}
