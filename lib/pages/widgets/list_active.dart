import 'package:flutter/material.dart';
import 'package:rent_a_car/data/car.dart';
import 'package:rent_a_car/pages/widgets/list_active_item.dart';

class ListActive extends StatelessWidget {
  const ListActive({
    Key? key,
    this.height,
    this.isPaddingActive = false,
    required this.length,
    required this.listActive,
  }) : super(key: key);

  final int length;
  final double? height;
  final List<Car> listActive;
  final bool isPaddingActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        padding: isPaddingActive ? const EdgeInsets.all(16) : EdgeInsets.zero,
        itemBuilder: (context, index) {
          final car = listActive[index];
          return ListActiveItem(car: car);
        },
        itemCount: length,
      ),
    );
  }
}
