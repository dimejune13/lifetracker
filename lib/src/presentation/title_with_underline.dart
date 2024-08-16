import 'package:flutter/material.dart';
import 'package:lifetracker/constants.dart';

class TitleWithUnderline extends StatelessWidget {
  const TitleWithUnderline({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 22,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Row(
                    children: [
                      Text(
                        (title),
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(right: kDefaultPadding / 4),
                    height: 5,
                    color: kPrimaryColor.withOpacity(0.2),
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

