import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    Key? key,
    required this.carName,
    required this.carImage,
    required this.carRentTime,
  }) : super(key: key);

  final String carName, carImage, carRentTime;

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
                  'assets/images/$carImage.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 16),
              Text(
                carName,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: kPrimary,
                ),
              ),
            ],
          ),
          Text(
            carRentTime,
            style: GoogleFonts.nunito(
              fontSize: 16,
              color: kPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
