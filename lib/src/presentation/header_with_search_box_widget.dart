import "package:flutter/material.dart";

import "package:lifetracker/constants.dart";

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.mediaSize,
  });

  final Size mediaSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.2 * mediaSize.height,
      child: Stack(
        children: <Widget>[
          Container(
            height: mediaSize.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    "Hi There!",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: kTextFieldColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: kTextFieldColor,
                    radius: 25.0,
                    child: CircleAvatar(
                      radius: 23.0,
                      backgroundColor: kTextFieldColor,
                      backgroundImage: AssetImage("assets/images/user_filled.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: mediaSize.height * 0.2 * 0.3,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: kTextFieldColor, 
                borderRadius: BorderRadius.all(Radius.circular(17)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.3),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}