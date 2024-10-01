import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Biodata Card'),
          backgroundColor: const Color.fromARGB(255, 163, 14, 255),
          centerTitle: true, // Menempatkan judul di tengah
        ),
        body: const Center(
          child: Biodata(),
        ),
      ),
    );
  }
}

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      color: const Color.fromARGB(255, 139, 3, 139),
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Image(
              image: AssetImage('assets/foto.jpg'),
              height: 250,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Chayla Ravanelly Quintitawati',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '2211104082',
              style: TextStyle(
                  color: Color.fromARGB(255, 250, 250, 250), fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'SE-06-01',
              style: TextStyle(
                  color: Color.fromARGB(255, 250, 250, 250), fontSize: 16.0),
            ),
            const SizedBox(height: 4.0),
            const Text(
              'Rekayasa Perangkat Lunak',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 16.0),
            ),
            const SizedBox(height: 4.0),
            const Text(
              'Telkom University Purwokerto',
              style: TextStyle(
                  color: Color.fromARGB(255, 252, 252, 252), fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Info"),
                      content: const Text("Tombol telah ditekan."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Lihat Detail'),
            ),
          ],
        ),
      ),
    );
  }
}
