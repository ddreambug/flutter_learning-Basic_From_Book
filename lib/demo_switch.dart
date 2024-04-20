import 'package:flutter/material.dart';

class DemoSwitch extends StatefulWidget {
  const DemoSwitch({super.key});

  @override
  State<DemoSwitch> createState() {
    return _DemoSwitchState();
  }
}

class _DemoSwitchState extends State<DemoSwitch> {
  String imageAssets = 'lib/assets/images/vegaHijau.png';
  String imageNumber = '1. Vegasaurus Hijau';
  final iconRight = const Icon(Icons.arrow_right);

  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          imageAssets = 'lib/assets/images/vegaHijau.png';
          imageNumber = '1. Dinosaurus Hijau';
          break;
        case 1:
          imageAssets = 'lib/assets/images/vegaKuning.png';
          imageNumber = '2. Dinosaurus Kuning';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(TextSpan(children: [
          const TextSpan(text: 'Demo Switch Untuk Mengubah Komponen '),
          WidgetSpan(child: iconRight)
        ])),
        actions: [
          IconButton(
            onPressed: () {
              selectImage(0);
            },
            icon: const Icon(
              Icons.change_circle_sharp,
              color: Colors.green,
            ),
          ),
          IconButton(
            onPressed: () {
              selectImage(1);
            },
            icon: const Icon(
              Icons.change_circle_sharp,
              color: Colors.yellow,
            ),
          ),
        ],

        //button gantinya ada di sini
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageAssets,
            width: double.infinity,
            height: 200,
          ),
          Text('Gambar $imageNumber'),
        ],
      ),
    );
  }
}
