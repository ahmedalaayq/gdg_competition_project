import 'package:flutter/material.dart';
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