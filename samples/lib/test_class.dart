//Easy to write

class Foo{
  String boo = "boo";
  List<int> intRow = [1,2,3];
}

class FooLoo extends Foo {
  String get foo => "${boo}Loo";

  FooLoo(){
    intRow.remove(2);
    print(intRow); // [1,3]
  }
}

//Object-based
class Vehicle{
  int enginePower;
  Vehicle(this.enginePower);
}

class WheeledVehicle{
  int wheelCount;
}

class Car extends Vehicle implements WheeledVehicle{
  @override
  int wheelCount = 4;

  Car(int enginePower) : super(enginePower);
}
