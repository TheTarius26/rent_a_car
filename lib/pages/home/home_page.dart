import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/pages/widgets/home_app_bar.dart';
import 'package:rent_a_car/pages/widgets/page_view_rent.dart';
import 'package:rent_a_car/pages/widgets/rent_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kPrimaryBackground,
              kSecondaryBackground,
            ],
            stops: [0.25, 1.0],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: const CustomScrollView(
          slivers: [
            HomeAppBar(),
            RentMenu(),
            PageViewRent(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.phone,
        ),
        backgroundColor: kPrimary,
      ),
    );
  }
}
