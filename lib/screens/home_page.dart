import 'package:flutter/material.dart';
import 'package:myshop/data/products.dart';
import 'package:myshop/screens/cart_page.dart';
import 'package:myshop/screens/product_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedCategory = 'All';
  late final CarouselController controller;

  @override
  void initState(){
    super.initState();
    controller = CarouselController();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final allProducts = Products().productList;
    final filteredProducts =
        (selectedCategory == 'All' || selectedCategory == null)
        ? allProducts
        : allProducts.where((p) => p.category == selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.network(
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.bwH3Ezg-RhkHDRivMyLokAHaGy%3Fpid%3DApi&f=1&ipt=c212d712c72e7f47a74c2a38e9a4904fcf407642acc1b69901125296ea916494&ipo=images',
                width: 70,
                height: 70,
              ),
              onPressed: () {},
            );
          },
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 15),
            width: 300,
            child: SearchBar(
              leading: Icon(Icons.search),
              trailing: <Widget>[
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => CartPage()
                        )
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Trending today",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 150,
            child: CarouselView.weighted(
              scrollDirection: Axis.horizontal,
              controller: controller,
              flexWeights: [1, 7, 1],
              children: allProducts.map((product) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(product.imageUrl, fit: BoxFit.cover),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Select Category: "),
                DropdownButton<String>(
                  value: selectedCategory,
                  items: Products.category,
                  hint: Text("Select Category"),
                  onChanged: (String? value) {
                    setState(() {
                      selectedCategory = value;
                    });
                    print(value);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=> ProductDetailPage(product: product,)
                        )
                    );
                  },
                  child: Card(
                    elevation: 2,
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: product.imageUrl.isNotEmpty
                              ? Image.network(
                                  product.imageUrl,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )
                              : Container(
                                  color: Colors.grey,
                                  child: Center(child: Icon(Icons.image)),
                                ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4),
                              Text(
                                '\$${product.price}',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
