import 'package:flutter/material.dart';

class TabTwo extends StatelessWidget {
  const TabTwo({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> products = [
      {
        'product_name': 'Headphone',
        'image': 'assets/headphone.png',
        'price': '\$ 88.45',
        'description': 'Series 6 Red'
      },
      {
        'product_name': 'iPad Pro-12',
        'image': 'assets/ipad-pro-12.png',
        'price': '\$ 38.45',
        'description': 'new collections',
      },
      {
        'product_name': 'Iphone-12',
        'image': 'assets/iphone-12.png',
        'price': '\$ 1200',
        'description': 'Series 6 Red',
      },
      {
        'product_name': 'Macbook air 13"',
        'image': 'assets/macbookair.png',
        'price': '\$ 1000',
        'description': '3 colors available',
      },
      {
        'product_name': 'Pixel-5',
        'image': 'assets/pixel-5.png',
        'price': '\$ 80',
        'description': '2 years warrenty',
      },
      {
        'product_name': 'Playstation',
        'image': 'assets/playstation.png',
        'price': '\$ 80',
        'description': '2 years warrenty',
      },
      {
        'product_name': 'S21 Ultra',
        'image': 'assets/S21_ultra.png',
        'price': '\$ 80',
        'description': '2 years warrenty',
      },
    ];
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(products[index]['image']),
                ),
                title: Text(
                  products[index]['product_name'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(
                  products[index]['description'],
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 16),
                ),
                trailing: Text(
                  products[index]['price'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepOrange),
                ),
              ),
            ),
          );
        });
  }
}
