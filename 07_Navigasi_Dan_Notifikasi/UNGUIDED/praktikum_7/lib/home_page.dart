import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/product.dart';
import 'product_list.dart';  

class HomePage extends StatelessWidget {
  final List<Category> categories = [
    Category(
      name: 'Kebutuhan Rumah Tangga',
      products: [
        Product(
          id: 1,
          name: 'Sapu Kipas',
          price: 50000.0,
          imageUrl:
              'https://s1.bukalapak.com/img/17385904961/s-400-400/Sapu_Lantai_Gagang_Nylon_Warna_Nagata___Only_Grab_Gojek__1_.jpg.webp',
          brand: 'Sapu Kipas Nagoya',
          description:
              'Sapu berkualitas tinggi untuk membersihkan lantai rumah Anda.',
        ),
        Product(
          id: 2,
          name: 'Set Alat Pel Putar',
          price: 300000.0,
          imageUrl:
              'https://cdn.ruparupa.io/fit-in/400x400/filters:format(webp)/filters:quality(90)/ruparupa-com/image/upload/Products/10515825_1.jpg',
          brand: 'Scotch Brite',
          description:
              'Pel yang mudah digunakan dan tahan lama, cocok untuk semua jenis lantai.',
        ),
        Product(
          id: 3,
          name: 'Pengharum Ruangan',
          price: 25000.0,
          imageUrl:
              'https://image.astronauts.cloud/product-images/2024/6/19June1_d413a96d-a0f5-4df5-8241-759219bdfade_900x900.jpg',
          brand: 'Stella',
          description:
              'Pengharum ruangan yang memberikan aroma segar sepanjang hari.',
        ),
      ],
    ),
    Category(
      name: 'Elektronik',
      products: [
        Product(
          id: 4,
          name: 'TV',
          price: 2000000.0,
          imageUrl:
              'https://cdn.polytron.co.id/public-assets/polytroncoid/2024/04/MicrosoftTeams-image-56-2048x1617-1.jpg',
          brand: 'Polytron',
          description:
              'Smart TV dengan resolusi tinggi dan fitur streaming terkini.',
        ),
        Product(
          id: 5,
          name: 'Kulkas',
          price: 3000000.0,
          imageUrl:
              'https://cdn.polytron.co.id/public-assets/polytroncoid/2024/04/main-image-belleza-jumborevvariarev-1024x910.jpg',
          brand: 'Polytron',
          description:
              'Kulkas hemat energi dengan kapasitas besar dan sistem pendinginan cepat.',
        ),
        Product(
          id: 6,
          name: 'HP',
          price: 15000000.0,
          imageUrl:
              'https://img.antaranews.com/cache/1200x800/2023/10/27/photo-output.jpeg.webp',
          brand: 'Apple Iphone 15 Pro Max',
          description:
              'Smartphone dengan performa tinggi dan kamera canggih untuk hasil foto terbaik.',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chayla Store'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Datang di Chayla E-commerce App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Qg0rXUEwL6ui6zcKV_b85LA_vBD24l0EuQ&s', 
              height: 300,
              width: 300,
            ),
            SizedBox(height: 8),
            Text(
              'Temukan berbagai produk pilihan dari kebutuhan rumah tangga hingga elektronik berkualitas.',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Card(
                    child: ListTile(
                      title: Text(category.name),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductListPage(category: category),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
