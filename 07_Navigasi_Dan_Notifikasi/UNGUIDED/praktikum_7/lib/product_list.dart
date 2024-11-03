import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'models/category.dart';
import 'product_detail.dart';

class ProductListPage extends StatelessWidget {
  final Category category;

  const ProductListPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatCurrency =
        NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0);

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: ListView.builder(
        itemCount: category.products.length,
        itemBuilder: (context, index) {
          final product = category.products[index];
          return Card(
            child: ListTile(
              title: Text(product.name),
              subtitle: Text(
                  '${product.brand} - ${formatCurrency.format(product.price)}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
