import 'package:flutter/material.dart';
import 'list_view.dart'; // Mengimpor file list_view.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WisataBanyumasScreen(),
    );
  }
}
