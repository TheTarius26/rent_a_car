import 'package:flutter/material.dart';
import 'package:rent_a_car/data/car.dart';
import 'package:rent_a_car/pages/home/widgets/list_active_item.dart';

class ListActive extends StatelessWidget {
  const ListActive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = Car.getListActiveCar();
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final car = list[index];
          return ListActiveItem(
            carName: car.name,
            carImage: 'assets/images/${car.image}.png',
            isActive: true,
          );
        },
        itemCount: list.length > 3 ? 3 : list.length,
      ),
    );
  }
}
