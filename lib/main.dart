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

// kali ini yang ku pelajari
// 1. cara membuat statful widget dimana butuh 2 class yaitu statefull widget dan state class
// 2. setiap class perlu ada konstuktor yang extend super.key 
// 3. theme dapat digonta ganti di main.dart di properti theme menggunakan themedata
// 4. perlu adanya setstate untuk mengupdate UI dalam stateful widget 
// 5. custom textstyle di theme pada main.dart dengan properti titletextstyle
