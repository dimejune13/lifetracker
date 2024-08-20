import 'package:flutter/material.dart';

class TrackerCard extends StatelessWidget {
  const TrackerCard({
    super.key,
    required this.icon,
    required this.page,
  });

  final IconData icon;
  final Widget? page;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page!,
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Coming soon!'),
              ),
            );
          }
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

