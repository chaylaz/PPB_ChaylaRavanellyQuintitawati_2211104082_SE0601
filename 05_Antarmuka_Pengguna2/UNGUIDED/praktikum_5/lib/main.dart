import 'package:flutter/material.dart';
import 'wisata_banyumas_screen.dart'; // Pastikan kamu menyimpan file WisataBanyumasScreen dengan nama ini

void main() {
  runApp(WisataBanyumasApp());
}

class WisataBanyumasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug di pojok kanan atas
      title: 'Wisata Banyumas',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WisataBanyumasScreen(),
    );
  }
}
