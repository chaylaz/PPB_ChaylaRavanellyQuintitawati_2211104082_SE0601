import 'package:flutter/material.dart';
import 'package:praktikum_7/product.dart';
import 'package:praktikum_7/detail.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final List<Product> products = [
    Product(
        id: 1,
        nama: 'Mouse Gaming',
        harga: 300000.00,
        imageUrl:
            'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-black.png?v=1',
        deskripsi: 'Mouse Gaming Logitech G502X'),
    Product(
        id: 2,
        nama: 'Keyboard Mechanical',
        harga: 400000.00,
        imageUrl:
            'https://resource.logitech.com/w_1600,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/keyboards/mx-mechanical/gallery/mx-mechanical-keyboard-top-view-graphite-us.png?v=1&quot',
        deskripsi: 'Keyboard Mechanical Logitech MX'),
    Product(
        id: 3,
        nama: 'Headphone Gaming',
        harga: 700000.00,
        imageUrl:
            'https://m.media-amazon.com/images/I/61CGHv6kmWL._AC_UF894,1000_QL80_.jpg',
        deskripsi: 'Headphone Gaming logitech G733'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text('Class Model'),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ListTile(
              leading: Image.network(
                product.imageUrl,
                width: 70,
                height: 70,
              ),
              title: Text(product.nama),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Harga : ${product.harga}'),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DetailProduct(
                              data: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Text('Ini adalah data ${product.nama}')
                                    ],
                                  ),
                                ),
                              ),
                            )));
              },
            );
          }),
    );
  }
}
