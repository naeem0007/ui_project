import 'package:flutter/material.dart';

class TabOne extends StatelessWidget {
  const TabOne({super.key});

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
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          products[index]['image'],
                          height: 70,
                          width: 70,
                        ),
                      ),
                      Text(
                        products[index]['product_name'],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        products[index]['description'],
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      const Divider(
                        color: Colors.transparent,
                      ),
                      Text(
                        products[index]['price'],
                        style: const TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
