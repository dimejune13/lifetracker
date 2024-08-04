import 'package:flutter/material.dart';

import 'package:lifetracker/src/features/financial/presentation/page.dart';

class FinancialRoute extends StatelessWidget {
  const FinancialRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financial Page'),
      ),
      body: Center(
        child: FinancialPage(),
      ),
    );
  }
}