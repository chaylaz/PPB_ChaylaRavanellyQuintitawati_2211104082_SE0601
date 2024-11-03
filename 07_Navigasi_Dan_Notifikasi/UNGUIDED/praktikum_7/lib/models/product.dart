class Product {
  final int id;
  final String name;
  final double price;  

  final String imageUrl;
  final String brand;
  final String description;  

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.brand,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      brand: json['brand'],
      description: json['description'],  
    );
  }
}
