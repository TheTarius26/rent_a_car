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
        true,
        'car',
        DateTime(2022, 1, 12),
        DateTime(2022, 1, 15),
      ),
      Car(
        'Innova',
        true,
        'car_2',
        DateTime(2021, 7, 10),
        DateTime(2021, 10, 1),
      ),
      Car(
        'Alphard',
        true,
        'car',
        DateTime(2021, 6, 10),
        DateTime(2021, 11, 1),
      ),
    ];
  }
}
