import 'package:flutter/material.dart';
import 'package:row_column_implementation/widget/row_demo.dart';

class StrukturAplikasi extends StatelessWidget {
  const StrukturAplikasi({super.key});

  final String imageAsset = 'lib/assets/images/struktur.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, //to prevent popping saat navigator.push()
      appBar: AppBar(
        title: const Text('Struktur Aplikasi'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const RowDemo();
                  },
                ),
              ); //untuk navigasi dengan metode Push
            },
            icon: const Icon(Icons.arrow_forward_outlined),
          ),
        ],
      ),
      body: Center(
        child: Image.asset(
          imageAsset,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
