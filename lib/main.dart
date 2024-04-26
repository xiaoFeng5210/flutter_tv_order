import 'package:flutter/material.dart';
import './screen/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Boil Billboard';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
            title: const Text(appTitle),
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            elevation: 4),
        body: HomePage(),
      ),
    );
  }
}
