import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/pages/widgets/icon_menu_button.dart';

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
            Text(
              'Pick Your Flavor',
              style: GoogleFonts.comfortaa(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: kPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Expanded(
                  child: IconMenuButton(
                    title: 'Rent Hourly',
                    icon: Icons.timer,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: IconMenuButton(
                    title: 'Rent Monthly',
                    icon: Icons.calendar_month,
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
