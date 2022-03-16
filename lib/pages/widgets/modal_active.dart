import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/data/car.dart';
import 'package:rent_a_car/data/user.dart';

class ModalActive extends StatelessWidget {
  const ModalActive({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(16),
      color: kSecondaryBackground,
      child: Column(
        children: [
          Container(
            height: 4,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              color: kPrimary,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(height: 16),
          AspectRatio(
            aspectRatio: 1.5,
            child: Image.asset(
              'assets/images/${car.image}.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                car.name,
                style: GoogleFonts.workSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 16),
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
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                User.endRent(car);
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                textStyle: GoogleFonts.workSans(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              child: Text(
                'End rent',
                style: GoogleFonts.workSans(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
