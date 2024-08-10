import "package:flutter/material.dart";

import "package:lifetracker/src/presentation/header_with_search_box_widget.dart";
import "package:lifetracker/src/presentation/title_with_underline_widget.dart";

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
      ],
    );
  }
}

