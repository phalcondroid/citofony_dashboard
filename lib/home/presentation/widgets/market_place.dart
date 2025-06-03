import 'package:flutter/material.dart';

class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});
}

final List<Product> colombianProducts = [
  Product(
    name: 'Café Matiz',
    imageUrl: 'assets/images/market/matiz.png',
    price: 23000,
  ),
  Product(
    name: 'Budweiser x6',
    imageUrl: 'assets/images/market/cerveza.png',
    price: 15000,
  ),
  Product(
    name: 'Leche entera',
    imageUrl: 'assets/images/market/alqueria.png',
    price: 5800,
  ),
  Product(
    name: 'Bon Yurt',
    imageUrl: 'assets/images/market/bonyurt.png',
    price: 3800,
  ),
  Product(
    name: 'Chocoramo',
    imageUrl: 'assets/images/market/chocoramo.jpg',
    price: 3800,
  ),
  Product(
    name: 'Buchanans',
    imageUrl: 'assets/images/market/buchanans.png',
    price: 78000,
  ),
];

class Marketplace extends StatelessWidget {
  const Marketplace({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: TextField(
              decoration: new InputDecoration(
                hintText: 'Buscar',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: GridView.builder(
              itemCount: colombianProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                final product = colombianProducts[index];
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Image.asset(product.imageUrl, height: 80, width: 80),
                      const SizedBox(height: 10),
                      Text(
                        product.name,
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      Text(
                        '\$${product.price.toStringAsFixed(0)} COP',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Añadir'),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
