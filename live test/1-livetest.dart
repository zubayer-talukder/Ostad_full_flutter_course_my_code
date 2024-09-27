class Car {
  String? brand;
  String? Model;
  int? year;
  int? car_age;

  //constructor
  Car(this.brand, this.Model, this.year) {}

  //method
  int carAge() {
    return DateTime.now().year - year!;
  }
}

main() {
  var car1 = Car("Toyota", "Corolla", 2015);
  car1.car_age = car1.carAge();

  print("Brand: ${car1.brand}");
  print("\nModel: ${car1.Model}");
  print("\nYear: ${car1.year}");
  print("\nCar Age: ${car1.carAge()} years ");
}
