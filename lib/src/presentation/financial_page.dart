import 'package:flutter/material.dart';

import 'package:lifetracker/constants.dart';

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
      body: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding,
          bottom: kDefaultPadding * 2.5,
        ),
        child: FinancialForm(),
      ),
    );
  }
}

class FinancialForm extends StatefulWidget {
  const FinancialForm({Key? key}) : super(key: key);

  @override
  State<FinancialForm> createState() => _FinancialFormState();
}

class _FinancialFormState extends State<FinancialForm> {
  final _formKey = GlobalKey<FormState>();

  String? paymentTransactionValue = 'qris';
  String? bankValue = 'mandiri';

  List<String> paymentTransactions = <String>['qris', 'cash', 'debit_card', 'credit_card', 'ewallet', 'bank_transfer'];
  List<String> banks = <String>['mandiri', 'jago', 'superbank', 'bca', 'bri', 'bsi', 'danamon'];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            'Payment Transaction',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          DropdownButtonFormField<String>(
            value: paymentTransactionValue,
            hint: Text('Select a payment transaction'),
            onChanged: (selectedPaymentTransaction) {
              setState(() {
                paymentTransactionValue = selectedPaymentTransaction;
              });
            },
            validator: (value) {
              if (value == null) {
                return 'Please select a payment transaction';
              }
              return null;
            },
            items: paymentTransactions
              .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
          ),
          DropdownButtonFormField(
            value: bankValue,
            hint: Text('Select a bank'),
            onChanged: (selectedBank) {
              setState(() {
                bankValue = selectedBank;
              });
            },
            validator: (value) {
              if (value == null) {
                return 'Please select a bank';
              }
              return null;
            },
            items: banks
              .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
          ),
        ],
      ),
    );
  }
}