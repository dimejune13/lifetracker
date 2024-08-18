import "package:flutter/material.dart";

import "package:lifetracker/src/presentation/header_with_search_box.dart";
import "package:lifetracker/src/presentation/tracker_card_routes.dart";
import "package:lifetracker/src/presentation/title_with_underline.dart";

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      body: Column(
        children: [
          HeaderWithSearchBox(mediaSize: mediaSize),
          TitleWithUnderline(title: "Track Your Life"),
          TrackerCardRoutes(),
        ],
      ),
    );
  }
}