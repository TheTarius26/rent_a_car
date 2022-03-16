import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/data/user.dart';
import 'package:rent_a_car/pages/widgets/list_history.dart';

class HistoryViewAllPage extends StatefulWidget {
  const HistoryViewAllPage({Key? key}) : super(key: key);

  @override
  State<HistoryViewAllPage> createState() => _HistoryViewAllPageState();
}

class _HistoryViewAllPageState extends State<HistoryViewAllPage> {
  @override
  Widget build(BuildContext context) {
    final listHistory = User().historyRent;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rent History',
          style: GoogleFonts.lobster(
            color: kPrimary,
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
      body: ListHistory(
        length: listHistory.length,
        listHistory: listHistory,
        isPaddingActive: true,
      ),
    );
  }
}
