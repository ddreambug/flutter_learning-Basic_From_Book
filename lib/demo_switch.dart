import 'package:flutter/material.dart';

class DemoSwitch extends StatefulWidget {
  const DemoSwitch({super.key});

  @override
  State<DemoSwitch> createState() {
    return _DemoSwitchState();
  }
}

class _DemoSwitchState extends State<DemoSwitch> {
  final image1 = 'lib/assets/images/vegaHijau.png';
  final image2 = 'lib/assets/images/vegaKuning.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Switch Untuk Mengganti Komponen'),
        //button gantinya ada di sini
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/images/vegaHijau.png',
            width: double.infinity,
            height: 200,
          ),
          const Text('Image 1'),
          const Divider(),
          Image.asset(
            'lib/assets/images/vegaKuning.png',
            width: double.infinity,
            height: 200,
          ),
          const Text('Image 2'),
        ],
      ),
    );
  }
}
