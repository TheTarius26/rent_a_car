import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
    required this.icon,
    required this.title,
    this.onPressedViewAll,
  }) : super(key: key);

  final IconData? icon;
  final String title;
  final void Function()? onPressedViewAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: kPrimary,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: GoogleFonts.actor(
                fontSize: 16,
                color: kPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        if (onPressedViewAll != null)
          TextButton(
            onPressed: onPressedViewAll,
            child: Text(
              'View All',
              style: GoogleFonts.actor(
                fontSize: 14,
                color: kPrimary,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
      ],
    );
  }
}
