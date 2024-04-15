import 'package:flutter/material.dart';
import 'package:text_and_button_counter/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Stateless Text and Button',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
              backgroundColor: Theme.of(context).primaryColor,
              titleTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 20))),
      home: const Home(),
    );
  }
}
