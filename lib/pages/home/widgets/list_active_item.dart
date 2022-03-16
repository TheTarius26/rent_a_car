import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';

class ListActiveItem extends StatelessWidget {
  const ListActiveItem({
    Key? key,
    required this.carName,
    required this.carImage,
    required this.isActive,
  }) : super(key: key);

  final String carName, carImage;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  'assets/images/car.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 16),
              Text(
                'Mustang',
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
    );
  }
}
