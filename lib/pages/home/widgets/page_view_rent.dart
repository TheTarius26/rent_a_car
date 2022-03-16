import 'package:flutter/material.dart';
import 'package:rent_a_car/pages/home/widgets/page_indicator.dart';
import 'package:rent_a_car/pages/home/widgets/rent_active.dart';
import 'package:rent_a_car/pages/home/widgets/rent_history.dart';

class PageViewRent extends StatefulWidget {
  const PageViewRent({Key? key}) : super(key: key);

  @override
  State<PageViewRent> createState() => _PageViewRentState();
}

class _PageViewRentState extends State<PageViewRent> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 5 / 4,
            child: PageView(
              children: const [
                RentHistory(),
                RentActive(),
              ],
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              physics: const BouncingScrollPhysics(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                2,
                (index) {
                  return PageIndicator(
                    isActive: index == pageIndex,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
