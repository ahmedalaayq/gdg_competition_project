import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../generated/assets.dart';
import '../widgets/list_item_builder.dart';
import 'home_page.dart';

class ProfilePage extends StatelessWidget {

  final List<Map> listItems =
  const[
  {
    'image': Assets.profileOrderSvg,
    'title' : 'All Orders'
  },  {
    'image':Assets.profileWishlistSvg,
    'title' : 'Wishlist'
  },  {
    'image':Assets.profileRecent,
    'title' : 'Viewed Recently'
  },  {
    'image':Assets.profileAddress,
    'title' : 'Address'
  },  {
    'image':Assets.profilePrivacy,
    'title' : 'Privacy & Policy'
  },

  ];

  const ProfilePage({super.key});
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
                   child: Image.asset(Assets.imagesGDGLogoWithoutName),
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


