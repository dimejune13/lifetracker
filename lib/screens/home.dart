import "package:flutter/material.dart";

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
        Container(
          height: 0.2 * mediaSize.height,
          child: Stack(
            children: <Widget>[
              Container(
                height: mediaSize.height * 0.2,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                )
              ),
            ],
          ),
        ),
      ],
    );
  }
}