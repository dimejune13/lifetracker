import 'package:flutter/material.dart';

class FinancialForm extends StatefulWidget {
  const FinancialForm({Key? key}) : super(key: key);

  @override
  _FinancialFormState createState() => _FinancialFormState();
}

class _FinancialFormState extends State<FinancialForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter your income',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your income';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter your expenses',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your expenses';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}