import 'package:competition_app/models/product_model.dart';
import 'package:competition_app/pages/profile_page.dart';
import 'package:competition_app/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../generated/assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> drawerItems = [
    {'icon': Icons.home, 'title': 'Home'},
    {'icon': Icons.person, 'title': 'Profile'},
    {'icon': Icons.notifications, 'title': 'Notifications'},
    {'icon': Icons.info, 'title': 'About'},
    {'icon': Icons.settings, 'title': 'Settings'},
    {'icon': Icons.logout, 'title': 'Logout'},
  ];

  final List<Map<String, String>> categories = const [
    {'image': Assets.categoriesLaptops, 'title': 'Laptops'},
    {'image': Assets.categoriesPhones, 'title': 'Phones'},
    {'image': Assets.categoriesBookImg, 'title': 'Books'},
    {'image': Assets.categoriesElectronics, 'title': 'Electronics'},
    {'image': Assets.categoriesWatch, 'title': 'Watches'},
    {'image': Assets.categoriesShoes, 'title': 'Shoes'},
    {'image': Assets.categoriesCosmetics, 'title': 'Cosmetics'},
    {'image': Assets.categoriesClothes, 'title': 'Clothes'},
  ];

  final List<ProductModel> products = [
    ProductModel(image: Assets.productsSmartWatch, title: 'Smart Watches', price: '10.9\$'),
    const ProductModel(image: Assets.productsTShirt, title: 'T-Shirt', price: '15.9\$'),
    const ProductModel(image: Assets.productsShoes, title: 'Shoes', price: '21.55\$'),
    const ProductModel(image: Assets.productsMacbook, title: 'MacBook', price: '90.99\$'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            SizedBox(height: 40,),
            for (var item in drawerItems)
              ListTile(
                leading: Icon(item['icon'], color: Colors.white),
                title: Text(item['title'], style: TextStyle(color: Colors.white)),
                onTap: item['title'] == 'Profile' ? ()=> Get.to(ProfilePage()) : null,
              ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),        backgroundColor: Colors.grey[900],

        title: Text(
          'GDG On Campus',
          style: TextStyle(color: Colors.yellow, fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
              child: Text(
                'Categories',
                style: TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 1.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < categories.length; i++) ...[
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(categories[i]['image']!),
                            radius: 32,
                          ),
                          SizedBox(height: 5),
                          Text(
                            categories[i]['title']!,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                    ],
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Products',
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  for(int i=0;i<products.length;i++)
                    ProductItem(productModel: products[i]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
