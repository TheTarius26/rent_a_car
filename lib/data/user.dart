import 'package:rent_a_car/data/car.dart';

class User {
  final List<Car> _activeRent = [
    Car(
      1,
      'Fortuner',
      true,
      'car',
      DateTime.now(),
      DateTime(2022, 6, 4),
    ),
    Car(
      2,
      'Beetle',
      true,
      'car',
      DateTime.now(),
      DateTime(2022, 6, 4),
    ),
  ];

  final List<Car> _historyRent = [
    Car(
      3,
      'Xenia',
      false,
      'car',
      DateTime(2022, 1, 12),
      DateTime(2022, 1, 15),
    ),
    Car(
      4,
      'Innova',
      false,
      'car_2',
      DateTime(2021, 7, 10),
      DateTime(2021, 10, 1),
    ),
    Car(
      5,
      'Alphard',
      false,
      'car',
      DateTime(2021, 6, 10),
      DateTime(2021, 11, 1),
    ),
    Car(
      6,
      'GTR Skyline',
      false,
      'car',
      DateTime(2020, 12, 10),
      DateTime(2021, 1, 1),
    ),
    Car(
      7,
      'Pagani',
      false,
      'car',
      DateTime(2020, 11, 10),
      DateTime(2020, 12, 1),
    ),
  ];

  List<Car> get activeRent => _activeRent;
  List<Car> get historyRent => _historyRent;

  static void addActiveRent(Car car) {
    User()._activeRent.add(car);
  }

  static void endRent(Car car) {
    User()
      .._activeRent.remove(car)
      .._historyRent.add(car);
  }
}
