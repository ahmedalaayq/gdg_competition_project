import 'package:competition_app/models/product_model.dart';
import 'package:flutter/material.dart';
class ProductItem extends StatefulWidget {
  const ProductItem({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
   bool status1 = false;
   bool status2 = false;

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
        Image.asset(
        widget.productModel.image,
        width: 150 ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 7,
            children: [
              Text(widget.productModel.title,style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1.0,fontWeight: FontWeight.bold),),
              Text(widget.productModel.price,style: TextStyle(color: Colors.blueAccent,fontSize: 20,letterSpacing: 1.0,fontWeight: FontWeight.bold),),
              Row(
                spacing: 10,
                children: [
                  GestureDetector(
                    onTap:()
                    {
                      setState(() {
                        status1 = !status1;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(status1 ? Icons.favorite : Icons.favorite_outline,color: Colors.white,),
                    ),
                  ),GestureDetector(
                    onTap:()
                    {
                      setState(() {
                        status2 = !status2;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(status2 ? Icons.local_grocery_store : Icons.local_grocery_store_outlined,color: Colors.white,),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        ],
      );
  }
}
