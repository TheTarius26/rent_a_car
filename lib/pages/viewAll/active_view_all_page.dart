import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/data/user.dart';
import 'package:rent_a_car/pages/widgets/list_active.dart';

class ActiveViewAllPage extends StatefulWidget {
  const ActiveViewAllPage({Key? key}) : super(key: key);

  @override
  State<ActiveViewAllPage> createState() => _ActiveViewAllPageState();
}

class _ActiveViewAllPageState extends State<ActiveViewAllPage> {
  @override
  Widget build(BuildContext context) {
    final list = User().activeRent;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Active Rent',
          style: GoogleFonts.lobster(
            color: kPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: kPrimary,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryBackground,
      ),
      body: ListActive(
        length: list.length,
        listActive: list,
        isPaddingActive: true,
      ),
    );
  }
}
