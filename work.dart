import 'dart:core';

class Car {
  // Static property to keep track of the number of Car objects created
  static int numberOfCars = 0;

  // Instance properties
  String brand;
  String model;
  int year;
  double milesDriven;

  // Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;  // Increment the count of Car objects
  }

  // Method to drive the car
  void drive(double miles) {
    milesDriven += miles;
  }

  // Method to get the miles driven
  double getMilesDriven() {
    return milesDriven;
  }

  // Method to get the brand
  String getBrand() {
    return brand;
  }

  // Method to get the model
  String getModel() {
    return model;
  }

  // Method to get the year
  int getYear() {
    return year;
  }

  // Method to get the age of the car
  int getAge() {
    var currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  // Create three Car objects
  Car car1 = Car("Toyota", "Camry", 2015, 50000);
  Car car2 = Car("Honda", "Civic", 2018, 30000);
  Car car3 = Car("Ford", "Mustang", 2020, 15000);

  // Drive each car a different number of miles
  car1.drive(100);
  car2.drive(200);
  car3.drive(300);

  // Print out the details of each car
  List<Car> cars = [car1, car2, car3];
  for (int i = 0; i < cars.length; i++) {
    print('Car ${i + 1}:');
    print('  Brand: ${cars[i].getBrand()}');
    print('  Model: ${cars[i].getModel()}');
    print('  Year: ${cars[i].getYear()}');
    print('  Miles Driven: ${cars[i].getMilesDriven()}');
    print('  Age: ${cars[i].getAge()} years');
    print('');
  }

  // Print out the total number of Car objects created
  print('Total number of cars created: ${Car.numberOfCars}');
}
