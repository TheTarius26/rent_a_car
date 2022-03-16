import 'package:flutter/material.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/pages/home/widgets/list_history.dart';
import 'package:rent_a_car/pages/home/widgets/page_header.dart';

class RentHistory extends StatelessWidget {
  const RentHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        color: kSecondary,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Column(
          children: [
            PageHeader(
              icon: Icons.history,
              title: 'Rent History',
              onPressedViewAll: () {},
            ),
            const Divider(thickness: 2),
            const SizedBox(height: 8),
            const ListHistory(),
          ],
        ),
      ),
    );
  }
}
