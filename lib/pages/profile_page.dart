import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class ProfilePage extends StatelessWidget {

  final List<Map> listItems =
  [
  {
    'image':'assets/images/profile/order_svg.png',
    'title' : 'All Orders'
  },  {
    'image':'assets/images/profile/wishlist_svg.png',
    'title' : 'Wishlist'
  },  {
    'image':'assets/images/profile/recent.png',
    'title' : 'Viewed Recently'
  },  {
    'image':'assets/images/profile/address.png',
    'title' : 'Address'
  },  {
    'image':'assets/images/profile/privacy.png',
    'title' : 'Privacy & Policy'
  },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Get.to(HomePage());
          },icon: Icon(Icons.logout,color: Colors.red,),)
        ],
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'GDG on Campus',
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 8,
              children: [
               CircleAvatar(
                 radius: 27,
                 backgroundColor: Colors.blue,
                 child: CircleAvatar(
                   backgroundColor: Colors.black,
                   radius: 25,
                   child: Image.asset('assets/images/GDG_Logo_without_name.png'),
                 ),
               ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GDG on Campus-Benha',
                      style: TextStyle(color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'gdgcampusbenhauniversity@gmail.com',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 15),
            Text('General', style: TextStyle(color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w400)),
            for(int i=0;i<4;i++)
              ListItemBuilder(title: listItems[i]['title'], image: listItems[i]['image']),
            SizedBox(height: 10),
            Text('Others', style: TextStyle(color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w400)),
            ListItemBuilder(title: listItems[4]['title'], image: listItems[4]['image']),

          ],
        ),
      ),
    );
  }
}

class ListItemBuilder extends StatelessWidget {
  const ListItemBuilder({super.key, required this.title, required this.image});
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
      color: Colors.transparent,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        title: Text(title,style: TextStyle(color: Colors.white),),
        trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
      ),
    );
  }
}
