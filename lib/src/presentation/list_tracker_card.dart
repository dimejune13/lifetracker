import 'package:flutter/material.dart';
import 'package:lifetracker/constants.dart';

import 'package:lifetracker/src/presentation/financial_page.dart';

class ListTrackerCard extends StatelessWidget {
  const ListTrackerCard({
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

class TrackerCard extends StatelessWidget {
  const TrackerCard({
    super.key,
    required this.icon,
    required this.page,
  });

  final IconData icon;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );

        },
        child: SizedBox(
          width: 120,
          height: 100,
          child: Icon(
            icon,
            size: 60.0,
          ),
        ),
      ),
    );
  }
}

