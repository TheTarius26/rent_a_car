import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';

class HistoryHeader extends StatelessWidget {
  const HistoryHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.history,
              color: kPrimary,
            ),
            const SizedBox(width: 8),
            Text(
              'Rent History',
              style: GoogleFonts.actor(
                fontSize: 16,
                color: kPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: GoogleFonts.actor(
              fontSize: 16,
              color: kPrimary,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
