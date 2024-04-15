import 'package:flutter/material.dart';
import 'package:row_column_implementation/widget/struktur_aplikasi.dart';

class CombinedDemo extends StatelessWidget {
  const CombinedDemo({super.key});

  final String title = 'Koceng Malas';
  final String location = 'Italy Renaissance Era';
  final String imageAsset = 'lib/assets/images/koceng.jpg';
  final String description = '''
The image is a close-up of a painting of a cat with a human face. The cat has short brown fur and large green eyes. It is wearing a red and gold jeweled collar. The background of the painting is dark and undefined.This style of portraiture with cats depicted with human-like features is characteristic of medieval cat paintings.  During this era, cats were often seen as magical creatures or symbols of evil.  Their mysterious and independent nature may have contributed to these depictions.
      '''; //menggunakan triple quotes untuk multiline string

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, //to prevent popping saat navigator.push()
      appBar: AppBar(
        title: const Text('Implementasi Row dan Column'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const StrukturAplikasi();
                  },
                ),
              ); //untuk navigasi dengan metode Push
            },
            icon: const Icon(Icons.arrow_forward_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              imageAsset,
              height: 250.0,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      location,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.star,
                  size: 32,
                  color: Colors.red,
                ),
                const Text(
                  '5',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(width: 25),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(24, 10, 24, 24),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 12,
                ),
                textAlign: TextAlign.justify,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
