import 'package:flutter/material.dart';
import 'package:rent_a_car/data/car.dart';
import 'package:rent_a_car/helper/date_time.dart';
import 'package:rent_a_car/pages/widgets/history_item.dart';

class ListHistory extends StatelessWidget {
  const ListHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listHistory = Car.getListHistoryCar();
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final history = listHistory[index];
          return HistoryItem(
            carName: history.name,
            carImage: history.image,
            carRentTime: calculateStartAndEndDate(
              history.startRent,
              history.endRent,
            ),
          );
        },
        itemCount: listHistory.length > 3 ? 3 : listHistory.length,
      ),
    );
  }
}
