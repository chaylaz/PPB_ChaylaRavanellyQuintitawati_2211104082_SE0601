import 'package:flutter/material.dart';
import 'home_page.dart';
import 'models/form_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biodata Mahasiswa',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/form': (context) => FormPage(),
      },
    );
  }
}
