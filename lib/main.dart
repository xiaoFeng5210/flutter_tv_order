import 'package:flutter/material.dart';
import './screen/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './riverpods/global.dart';

void main() => runApp(
      ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String appTitle = ref.watch(appTitleProvider);
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
            title: Text(appTitle),
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            elevation: 4),
        body: HomePage(),
      ),
    );
  }
}
