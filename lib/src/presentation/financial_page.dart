import 'package:flutter/material.dart';

import 'package:lifetracker/src/presentation/financial_form.dart';
class FinancialPage extends StatelessWidget {
  const FinancialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Page'),
      ),
      body: Center(
        child: FinancialForm(),
      ),
    );
  }
}