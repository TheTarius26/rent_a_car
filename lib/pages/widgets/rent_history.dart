import 'package:flutter/material.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/pages/widgets/history_header.dart';
import 'package:rent_a_car/pages/widgets/list_history.dart';

class RentHistory extends StatelessWidget {
  const RentHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        color: kSecondary,
        child: Column(
          children: const [
            HistoryHeader(),
            Divider(),
            SizedBox(height: 8),
            ListHistory(),
          ],
        ),
      ),
    );
  }
}
