import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/pages/home/widgets/icon_menu_button.dart';

class RentMenu extends StatelessWidget {
  const RentMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: IconMenuButton(
                    title: 'Rent Hourly',
                    icon: Icons.timer,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: IconMenuButton(
                    title: 'Rent Monthly',
                    icon: Icons.calendar_month,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
