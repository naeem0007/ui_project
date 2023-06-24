import 'package:flutter/material.dart';

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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'Food',
      'Electronics',
      'Groceries',
      'Mobile',
      'Laptop',
      'Clothes'
    ];

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 30, right: 20),
        child: NestedScrollView(
            floatHeaderSlivers: true,
            physics: const BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverList(
                    delegate: SliverChildListDelegate([
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hello Naeem,',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                      const Text(
                        "Let's Gets Something!",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const Divider(
                        color: Colors.transparent,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      firstRow(),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Top Categories',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 12),
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    categories[index],
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ));
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ]))
              ];
            },
            body: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
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
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
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
                })),
      ),
    ));
  }
}

Widget firstRow() {
  List<Color> colors = [
    Colors.orange,
    Colors.blue,
    Colors.purple,
    Colors.redAccent
  ];
  return SizedBox(
    height: 120,
    child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            height: 1,
            width: 280,
            decoration: BoxDecoration(
                color: colors[index], borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "40% Off for Black Friday!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/headphone.png',
                      width: 70,
                    ),
                  )
                ],
              ),
            ),
          );
        }),
  );
}
