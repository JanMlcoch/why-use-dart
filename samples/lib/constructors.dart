class Car{
  int enginePower;
  String countryOfOrigin;

  Car(this.enginePower);

  Car.fromAbroad(this.enginePower, {this.countryOfOrigin = "Germany"}){
    // do something with named parameter countryOfOrigin, default is "Germany"
    // call:  new Car.fromAbroad(50, countryOfOrigin: „USA“)
    repair("Pneu defect", 3500);
  }

  void repair(String problem, [int maximalPrice = 1000000]){
    // do something with optional maximalPrice, default is 1.000.000
  }
}
