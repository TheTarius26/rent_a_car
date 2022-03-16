import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/data/car.dart';
import 'package:rent_a_car/pages/widgets/modal_active.dart';

class ListActiveItem extends StatelessWidget {
  const ListActiveItem({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return ModalActive(car: car);
          },
        );
      },
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/images/${car.image}.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  car.name,
                  style: GoogleFonts.workSans(
                    fontSize: 16,
                    color: kPrimary,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Text(
                'Active',
                style: GoogleFonts.workSans(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
