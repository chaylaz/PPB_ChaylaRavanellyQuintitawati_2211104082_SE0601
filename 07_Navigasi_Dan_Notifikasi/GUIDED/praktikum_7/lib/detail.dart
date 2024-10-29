import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key, required this.data});

  final Widget data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Product'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: const Center(
        child: Text('Ini adalah produk detail'),
      )
    );
  }
}
