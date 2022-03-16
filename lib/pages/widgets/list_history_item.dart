import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/data/car.dart';
import 'package:rent_a_car/helper/date_time.dart';
import 'package:rent_a_car/pages/widgets/modal_history.dart';

class ListHistoryItem extends StatelessWidget {
  const ListHistoryItem({
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
            return ModalHistory(car: car);
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
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: kPrimary,
                  ),
                ),
              ],
            ),
            Text(
              calculateStartAndEndDate(car.startRent, car.endRent),
              style: GoogleFonts.nunito(
                fontSize: 16,
                color: kPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
