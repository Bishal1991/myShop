import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:myshop/models/product.dart';

class Products {
  List<Product> productList = <Product>[
    Product(
      id: '1',
      name: 'Samsung',
      category: 'Electronics',
      price: 2000,
      rating: 4.9,
      iconName: 'mobile phone',
      description: 'Best mobile phone out there in market',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fgvpcertvideos.att.com%2Fatt-videos%2F2026%2Fgvp_S26_5001972%2Fgvp_S26_5001972_480.jpg&f=1&nofb=1&ipt=1b165c4862b29547933c3a352a8b21f4350411fb6f70ff115d7a4ba317baa7d1&ipo=images',
    ),

    Product(
      id: '2',
      name: 'iPhone',
      category: 'Electronics',
      price: 3000,
      rating: 4.9,
      iconName: 'mobile phone',
      description: 'mobile phone everyone loves',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpisces.bbystatic.com%2Fimage2%2FBestBuy_US%2Fimages%2Fproducts%2F6525%2F6525424_sd.jpg&f=1&nofb=1&ipt=88ace876d2608270c1e585851b3cf9441c84050b8144d1403e0748055cede65f&ipo=images',
    ),

    Product(
      id: '3',
      name: 'Asus ROG',
      category: 'Electronics',
      price: 13000,
      rating: 4.9,
      iconName: 'Laptop',
      description: 'Best Gaming Laptop you can ever find',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.oPlkXLplxzCk0xBi2G31VwHaEK%3Fr%3D0%26pid%3DApi&f=1&ipt=5a52e58635dbd94d6b15527bb0d57dc9aab76782f7e14c35df07032b9fa7f957&ipo=images',
    ),

    Product(
      id: '4',
      name: 'Vintage Watch',
      category: 'Accessories',
      price: 2000,
      rating: 5,
      iconName: 'Watch',
      description: 'Best Classic watch for men',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%2Fid%2FOIP.GTi7j2i_QvqptHQqdkETcwHaFS%3Fr%3D0%26pid%3DApi&f=1&ipt=d9f3db1632f6692eb61b904e029cec7135ba60a6f4dc7d62c09ba9968a5739e0&ipo=images',
    ),

    Product(
      id: '5',
      name: 'Rayban Sunglasses',
      category: 'Accessories',
      price: 2000,
      rating: 3.8,
      iconName: 'Sunglasses',
      description: 'Good Sunglasses',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%2Fid%2FOIP.3MCKZGbKPnQeVaKQScaEYQHaHa%3Fr%3D0%26pid%3DApi&f=1&ipt=eb43a0002a1000f8767cd588b9222be61efebc44976a899b995e4541284f6bf4&ipo=images',
    ),

    Product(
      id: '6',
      name: 'LV bag',
      category: 'Accessories',
      price: 500,
      rating: 3.9,
      iconName: 'handbag',
      description: 'Handbag to improve you looks and keep things',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%2Fid%2FOIP.ifYFGCwJotznzKNLBqFQ_gHaE8%3Fr%3D0%26pid%3DApi&f=1&ipt=779a4a728c93fc46dee5e1244bfc4f903b9802bd34b86c76f55260ab92507a84&ipo=images',
    ),

    Product(
      id: '7',
      name: 'A brief history of time',
      category: 'Books',
      price: 190,
      rating: 4.5,
      iconName: 'book',
      description: 'A book by Stephen Hawking',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn2.penguin.com.au%2Fcovers%2Foriginal%2F9780857501004.jpg&f=1&nofb=1&ipt=a8f1b7ede11b4bd13d73aaea9abc925492a55c0f1d5749413d16c23560b94c8f&ipo=images',
    ),

    Product(
      id: '8',
      name: 'Bigyan Bhairav',
      category: 'Books',
      price: 220,
      rating: 4.9,
      iconName: 'book',
      description: 'A book by rishi Vasugupta',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.P_pAzkDG75MFhggLG6BPdAAAAA%3Fpid%3DApi&f=1&ipt=37d124bc861e3892b7834e0c9256608f950afaa8bb3db64a8868c35b343ad29e&ipo=images',
    ),

    Product(
      id: '9',
      name: 'Ashtrabakra Gita',
      category: 'Books',
      price: 200,
      rating: 4.9,
      iconName: 'book',
      description: 'Great life philosophy by ashtrabakra',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%2Fid%2FOIP.nF7SkZPdxJheWIuY8gPozAHaIZ%3Fr%3D0%26pid%3DApi&f=1&ipt=76627c1159e119a52e0210a8e4df59f78776e8fb4d3afde8f268d778c1de8360&ipo=images',
    ),

    Product(
      id: '10',
      name: 'Necklace',
      category: 'Jewellery',
      price: 19000,
      rating: 4.4,
      iconName: 'necklace',
      description: 'Elegant Bridesmaid Necklace | Perfect Neckwear for Women',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Frimli.in%2Fcdn%2Fshop%2Ffiles%2FAgathaSilverNecklacerimli01.webp%3Fv%3D1774517320%26width%3D2048&f=1&nofb=1&ipt=2b2da1479ddaee267d53342ee043c4ee0d84bcc1f11dd93c9786e0168eb97041&ipo=images',
    ),

    Product(
      id: '11',
      name: 'Bulaki',
      category: 'Jewellery',
      price: 20000,
      rating: 4.7,
      iconName: 'bulaki',
      description: 'Nepali Traditional Bulaki',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.jewelrylaliguras.com%2Fwp-content%2Fuploads%2F2022%2F02%2Fclassic-items.003.png&f=1&nofb=1&ipt=2855a4b131798594bbddbf838c006a7c2801c99a3a83315c1e9c1ca19d2a24cb&ipo=images',
    ),

    Product(
      id: '12',
      name: 'Earring',
      category: 'Jewellery',
      price: 50000,
      rating: 3.9,
      iconName: 'Sunglasses',
      description: 'Ruby Green Gold Earrings With Ear Chain',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F4a%2Fa8%2Fe0%2F4aa8e0d57cb750df7364e681d3d9fe74.jpg&f=1&nofb=1&ipt=b61a2b80c891893a4ac830af57e967edfb2fa958ab60f300e4056567d6b08c64&ipo=images',
    ),

    Product(
      id: '13',
      name: 'GoldStar shoe',
      category: 'Shoe',
      price: 10,
      rating: 10,
      iconName: 'shoe',
      description: 'Gold Star shoe for gold star people',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.GpdRG2V2NE0FAuBYO8jssgHaJQ%3Fr%3D0%26pid%3DApi&f=1&ipt=be50fae4a7f423cfc95b21781b865091cf7747c4bace493499cc702866de762a&ipo=images',
    ),

    Product(
      id: '14',
      name: 'Classic Formal Shoe',
      category: 'Shoe',
      price: 2000,
      rating: 4.9,
      iconName: 'shoe',
      description: 'Akiihool Mens Oxford Shoes Mens Prince Classic Modern Formal Oxford Lace Up Dress Shoes Fashion (Black,8.5)',
      imageUrl: '',
    ),

    Product(
      id: '15',
      name: 'Sneaker',
      category: 'Shoe',
      price: 200,
      rating: 3,
      iconName: 'shoe',
      description: 'White Sneakers: The most stylish shoes for 2025',
      imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ffatmumslim.com.au%2Fwp-content%2Fuploads%2F2025%2F01%2FHilda-White-Sneakers.png&f=1&nofb=1&ipt=3be65bf870114e9d17787f4d4dde70b957a73ab5e0e451d66794390bfe3b6182&ipo=images',
    ),
  ];

  static List<DropdownMenuItem<String>>? get category {
    final categories = [
      'All',
      ...Products().productList.map((p) => p.category).toSet()
    ];
    return categories.map((cat) {
      return DropdownMenuItem<String>(
        value: cat,
        child: Text(cat),
      );
    }).toList();
  }
}