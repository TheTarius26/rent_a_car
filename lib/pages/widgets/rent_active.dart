import 'package:flutter/material.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/data/user.dart';
import 'package:rent_a_car/pages/viewAll/active_view_all_page.dart';
import 'package:rent_a_car/pages/widgets/list_active.dart';
import 'package:rent_a_car/pages/widgets/page_header.dart';

class RentActive extends StatelessWidget {
  const RentActive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listCar = User().activeRent;
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
              onPressedViewAll: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ActiveViewAllPage(),
                  ),
                );
              },
            ),
            const Divider(thickness: 2),
            ListActive(
              length: listCar.length,
              listActive: listCar,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
