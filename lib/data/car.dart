class Car {
  String name;
  bool isRented;
  String image;
  DateTime startRent;
  DateTime endRent;

  Car(
    this.name,
    this.isRented,
    this.image,
    this.startRent,
    this.endRent,
  );

  static List<Car> getListHistoryCar() {
    return [
      Car(
        'Xenia',
        false,
        'car',
        DateTime(2022, 1, 12),
        DateTime(2022, 1, 15),
      ),
      Car(
        'Innova',
        false,
        'car_2',
        DateTime(2021, 7, 10),
        DateTime(2021, 10, 1),
      ),
      Car(
        'Alphard',
        false,
        'car',
        DateTime(2021, 6, 10),
        DateTime(2021, 11, 1),
      ),
      Car(
        'GTR Skyline',
        false,
        'car',
        DateTime(2020, 12, 10),
        DateTime(2021, 1, 1),
      ),
      Car(
        'Pagani',
        false,
        'car',
        DateTime(2020, 11, 10),
        DateTime(2020, 12, 1),
      ),
    ];
  }

  static List<Car> getListActiveCar() {
    return [
      Car(
        'Fortuner',
        true,
        'car',
        DateTime.now(),
        DateTime(2022, 6, 4),
      ),
      Car(
        'Beetle',
        true,
        'car',
        DateTime.now(),
        DateTime(2022, 6, 4),
      ),
    ];
  }
}
