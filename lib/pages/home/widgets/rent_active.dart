import 'package:flutter/material.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/pages/home/widgets/list_active.dart';
import 'package:rent_a_car/pages/home/widgets/page_header.dart';

class RentActive extends StatelessWidget {
  const RentActive({
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
              icon: Icons.travel_explore,
              title: 'Active Rent',
              onPressedViewAll: () {},
            ),
            const Divider(thickness: 2),
            const ListActive(),
          ],
        ),
      ),
    );
  }
}
