import 'package:flutter/material.dart';
import 'package:lifetracker/constants.dart';

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
          TrackerCard(icon: Icons.attach_money),
          TrackerCard(icon: Icons.fitness_center),
        ],
      ),
    );
  }
}

class TrackerCard extends StatelessWidget {
  const TrackerCard({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Clicked on Card")),
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

