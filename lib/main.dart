import 'package:flutter/material.dart';
import 'package:switch_case_ganti_image/demo_switch.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final kColorScheme = ColorScheme.fromSeed(seedColor: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Switch Untuk Mengganti Komponen',
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.onPrimary,
          ),
          textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 14))),
      home: const DemoSwitch(),
    );
  }
}
