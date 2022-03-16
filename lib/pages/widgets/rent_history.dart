import 'package:flutter/material.dart';
import 'package:rent_a_car/common.dart';
import 'package:rent_a_car/data/user.dart';
import 'package:rent_a_car/pages/viewAll/history_view_all_page.dart';
import 'package:rent_a_car/pages/widgets/list_history.dart';
import 'package:rent_a_car/pages/widgets/page_header.dart';

class RentHistory extends StatelessWidget {
  const RentHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listHistory = User().historyRent;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        color: kSecondary,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Column(
          children: [
            PageHeader(
              icon: Icons.history,
              title: 'Rent History',
              onPressedViewAll: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HistoryViewAllPage();
                }));
              },
            ),
            const Divider(thickness: 2),
            const SizedBox(height: 8),
            ListHistory(
              length: listHistory.length > 3 ? 3 : listHistory.length,
              listHistory: listHistory,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
