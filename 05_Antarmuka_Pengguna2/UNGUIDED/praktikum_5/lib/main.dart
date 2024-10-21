import 'package:flutter/material.dart';
import 'wisata_banyumas_screen.dart'; 
void main() {
  runApp(WisataBanyumasApp());
}

class WisataBanyumasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      title: 'Wisata Banyumas',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WisataBanyumasScreen(),
    );
  }
}
