import 'package:flutter/material.dart';
import 'package:rent_a_car/data/car.dart';
import 'package:rent_a_car/helper/date_time.dart';
import 'package:rent_a_car/pages/widgets/list_history_item.dart';

class ListHistory extends StatelessWidget {
  const ListHistory({
    Key? key,
    required this.length,
    required this.listHistory,
    this.height,
    this.isPaddingActive = false,
  }) : super(key: key);

  final int length;
  final double? height;
  final List<Car> listHistory;
  final bool isPaddingActive;

  @override
  Widget build(BuildContext context) {
    final list = listHistory;
    return SizedBox(
      height: height,
      child: ListView.builder(
        padding: isPaddingActive ? const EdgeInsets.all(16) : EdgeInsets.zero,
        itemBuilder: (context, index) {
          final history = list[index];
          return ListHistoryItem(
            car: history,
          );
        },
        itemCount: length,
      ),
    );
  }
}
