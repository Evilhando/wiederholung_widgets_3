import 'package:flutter/material.dart';

void main() {
  runApp(const Example3());
}

class Example3 extends StatelessWidget {
  const Example3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Row(
                children: [
                  Text('ListView Exercise'),
                ],
              ),
              titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            body: Center(
              child: ListView(
                shrinkWrap: false,
                children: products.map((product) {
                  return ListTile(
                    leading: const Icon(Icons.shopping_cart),
                    title: Text(product.name),
                    trailing: Text('\$ ${product.price}'),
                  );
                }).toList(),
              ),
            )));
  }
}

class Product {
  String name;
  double price;
  Product({required this.name, required this.price});
}

List<Product> products = [
  Product(name: 'Dildo', price: 25.99),
  Product(name: 'Iphone 15 Pro Max', price: 1499.99),
  Product(name: 'Air Pods Pro (Gen2)', price: 249.95),
  Product(name: 'Apple Watch Ultra', price: 899.99),
  Product(name: 'Magic Mouse', price: 69.99),
  Product(name: 'Magic Keyboard', price: 169.99),
];
