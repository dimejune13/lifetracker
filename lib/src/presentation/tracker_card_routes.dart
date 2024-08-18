import 'package:flutter/material.dart';
import 'package:lifetracker/constants.dart';

import 'package:lifetracker/src/presentation/financial_page.dart';
import 'package:lifetracker/src/presentation/tracker_card.dart';

class TrackerCardRoutes extends StatelessWidget {
  const TrackerCardRoutes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: kDefaultPadding,
        bottom: kDefaultPadding * 2.5,
      ),
      child: Row(
        children: <Widget>[
          TrackerCard(icon: Icons.attach_money, page: FinancialPage()),
          TrackerCard(icon: Icons.fitness_center, page: FinancialPage()),
        ],
      ),
    );
  }
}
