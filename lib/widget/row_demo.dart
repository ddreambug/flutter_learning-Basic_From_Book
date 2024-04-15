import 'package:flutter/material.dart';
import 'package:row_column_implementation/widget/column_demo.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, //to prevent popping saat navigator.push()

      appBar: AppBar(
        title: const Text('Demo Row'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ColumnDemo();
                  },
                ),
              ); //untuk navigasi dengan metode Push
            },
            icon: const Icon(Icons.arrow_forward_outlined),
          ),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
            const SizedBox(width: 5),
            ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
            const SizedBox(width: 5),
            ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
            const SizedBox(width: 5),
            ElevatedButton(onPressed: () {}, child: const Text('Button 4')),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
