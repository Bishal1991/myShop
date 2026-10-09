import 'package:flutter/material.dart';
import 'package:myshop/data/products.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final addedItem =

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListView.builder(
            itemCount: Products().productList.length,
              itemBuilder: (BuildContext context, int index){

              },
          ),
        ],
      ),
    );
  }
}
