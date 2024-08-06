import 'package:flutter/material.dart';

import 'package:lifetracker/constants.dart';
import 'package:lifetracker/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: kPrimaryColor,
        ),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}