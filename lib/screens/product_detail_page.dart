import 'package:flutter/material.dart';
import 'package:myshop/data/products.dart';

import '../models/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        children: [
          Image.network(product.imageUrl),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(product.name,
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                          ),
                          Text(product.category,
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber,size: 30),
                          Text("${product.rating}",
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text("\$${product.price}",
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.w700, fontSize: 30),
                ),
                Text(product.description,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 60, right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(

                    onPressed: (){},
                    child: Text("Add to cart")
                ),

                OutlinedButton(
                    onPressed: (){},
                    child: Text("Buy now")
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
