import "package:flutter/material.dart";

import "package:lifetracker/src/presentation/header_with_search_box.dart";
import "package:lifetracker/src/presentation/tracker_card_routes.dart";
import "package:lifetracker/src/presentation/title_with_underline.dart";

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;

    return Column(
      children: [
        HeaderWithSearchBox(mediaSize: mediaSize),
        TitleWithUnderline(title: "Track Your Life"),
        TrackerCardRoutes(),
      ],
    );
  }
}

