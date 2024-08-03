import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Life Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              const Text(
                'Welcome to Life Tracker App',
              ),
              const Text(
                'Choose what to track:'
              ),
              ElevatedButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text(("Financial Tap")),)
              ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'Financial'
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text(("Health Tap")),)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'Health'
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
