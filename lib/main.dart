import 'package:flutter/material.dart';
import 'package:row_column_implementation/widget/combined_demo.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final kColorScheme = ColorScheme.fromSeed(seedColor: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Row dan Column',
      theme: ThemeData().copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.onPrimary,
          ),
          textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 14,
              ))),
      home: const CombinedDemo(),
    );
  }
}
