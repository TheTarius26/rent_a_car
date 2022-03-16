import 'package:flutter/material.dart';
import 'package:rent_a_car/common.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 300),
        tween: Tween<double>(begin: 4, end: isActive ? 16 : 4),
        builder: (context, double value, child) {
          return Container(
            height: 4,
            width: value,
            decoration: BoxDecoration(
              color: isActive ? kPrimary : kSecondary,
              borderRadius: BorderRadius.circular(4),
            ),
          );
        },
      ),
    );
  }
}
