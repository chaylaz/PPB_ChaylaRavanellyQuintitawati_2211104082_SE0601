import 'package:flutter/material.dart';
import 'imagepicker_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Memilih Gambar',
      home: ImageSelectionScreen(),
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
    );
  }
}
