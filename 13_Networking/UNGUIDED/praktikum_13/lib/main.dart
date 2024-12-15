import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Aplikasi Catatan Sederhana',
      theme: ThemeData(
        primaryColor: Colors.teal,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
      ),
      home: HomePage(),
    );
  }
}
