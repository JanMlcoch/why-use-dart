library client;

import "package:dart/libs/factory.dart";

class Client{
  Client(){
    Car myCar = new Car(55);
    print(myCar.enginePower); // 55
    print(myCar._engineCode); // Error: getter "_engineCode" isn‘t defined for class "Car"
  }
}
