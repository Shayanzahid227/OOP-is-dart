import 'l1_p.dart';

void main() {
  // Vehicle v = Vehicle('Honda', 'Civic', 2025);
  // v.displayInfo();
  car c = car('Honda', 'EK', '2014', 2024, 2);
  c.displayInfo();
  print(
    "\nRental price is ${c.carRentalCalculator(8)}\n*************************************************************************************************",
  );
  bike b = bike('Yamaha', 'classic19', '1998', 2001, 8);
  b.displayInfo();
  print(
    "\nRental price is ${b.carRentalCalculator(5)}\n*************************************************************************************************",
  );
}

// car_rental_calculator
// base class
class Vehicle {
  String? brand;
  String? name;
  String? model;
  int? year;
  car? c;
  Vehicle(this.brand, this.name, this.model, this.year);
  void displayInfo() {
    print("\nBrand: $brand\nName: $name\nModel: $model\nYear: $year");
  }

  // car rental calculator
  double carRentalCalculator(int days) {
    return days * 50.0;
  }
}

// child class
class car extends Vehicle {
  int? door; // show type of car so rent will also change according to doors
  car(String? brand, String? name, String? model, int? year, this.door)
    : super(brand, name, model, year);

  ///
  ///. over riding a method
  ///
  @override
  double carRentalCalculator(int days) {
    return super.carRentalCalculator(days) + 20 * door!;
  }

  ///
  ///. to print doors number also then override the function or write door in vehicle class
  ///
  @override
  void displayInfo() {
    super.displayInfo();
    print("Doors: $door");

    ///
    ///. this below method is used if want some special order in print statement like doors before years in above doors will print in last
    ///
    /*
    print(
      "\nBrand: $brand\nName: $name\nModel: $model\nDoors: $door Doors\nYear: $year ",
    );
     */
  }
}

class bike extends Vehicle {
  int? carier;
  bike(String? brand, String? name, String? model, int? year, this.carier)
    : super(brand, name, model, year);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Carier: $carier");
  }

  @override
  double carRentalCalculator(int days) {
    if (carier! >= 3) {
      return super.carRentalCalculator(days) + 20 * days;
    } else if (carier! >= 2) {
      return super.carRentalCalculator(days) + 30 * days;
    } else {
      return super.carRentalCalculator(days) + 50 * days;
    }
  }
}
