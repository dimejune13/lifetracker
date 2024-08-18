import 'package:flutter/material.dart';

class FinancialPage extends StatelessWidget {
  const FinancialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: Theme.of(context).colorScheme.primaryContainer,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
      body: Column(
        children: [
          Text("Financial Form"),
        ],
      ),
    );
  }
}