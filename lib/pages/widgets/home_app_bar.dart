import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: false,
      backgroundColor: Colors.transparent,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Rent-a-car',
            style: GoogleFonts.lobster(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kPrimary,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                color: kPrimary,
                size: 14,
              ),
              Text(
                'Jakarta, Indonesia',
                style: GoogleFonts.actor(
                  fontSize: 12,
                  color: kPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.list_alt_rounded,
          color: kPrimary,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.phone,
            color: kPrimary,
          ),
        ),
      ],
    );
  }
}
