import 'package:flutter/material.dart';

class FlexibleExpandedWidget extends StatelessWidget {
  const FlexibleExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container untuk membungkus judul
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.blueAccent, // Warna latar belakang judul
          child: const Center(
            child: Text(
              "Flexible and Expanded Widget Example",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Warna teks judul
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),

        // Flexible Example
        Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 100,
              color: Colors.red,
            ),
            Flexible(
              child: Container(
                height: 100,
                color: Colors.green,
                child: const Text(
                  "Flexible takes up the remaining space but can shrink if needed.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Icon(Icons.sentiment_very_satisfied),
          ],
        ),

        const SizedBox(height: 20),

        // Expanded Example
        Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 100,
              color: Colors.red,
            ),
            Expanded(
              child: Container(
                height: 100,
                color: Colors.green,
                child: const Text(
                  "Expanded forces the widget to take up all the remaining space.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Icon(Icons.sentiment_very_satisfied),
          ],
        ),
      ],
    );
  }
}
