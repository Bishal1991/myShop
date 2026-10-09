import 'package:flutter/material.dart';
import '../models/product.dart';

class CartData{
  static final List<Product> items = [];
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CartData.items.isEmpty?
      const Center(
        child: Text("Your cart is empty"),
      ):
      Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: CartData.items.length,
                itemBuilder: (BuildContext context, int index){
                final product = CartData.items[index];
                return ListTile(
                  leading: Image.network(product.imageUrl),
                  title: Text(product.name),
                  subtitle: Text("\$ ${product.price}"),
                  trailing: IconButton(
                      onPressed: (){
                        setState(() {
                          CartData.items.removeAt(index);
                        });
                      },
                      icon: Icon(Icons.cancel_outlined)),
                );
                },
            ),
          ),
        ],
      ),
    );
  }
}
