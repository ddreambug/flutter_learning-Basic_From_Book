import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, //to prevent popping saat navigator.push()

      appBar: AppBar(
        title: const Text('Demo Column'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
            const SizedBox(height: 5),
            ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
            const SizedBox(height: 5),
            ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
            const SizedBox(height: 5),
            ElevatedButton(onPressed: () {}, child: const Text('Button 4')),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
