import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/Pages/Product_Details.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  var product_list=[
    {
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "old_price":120,
      "price":85
    },
    {
      "name":"Hills",
      "picture":"images/products/hills1.jpeg",
      "old_price":130,
      "price":95
    },
    {
      "name":"Black Dress",
      "picture":"images/products/dress2.jpeg",
      "old_price":150,
      "price":55
    },
    {
      "name":"Pants",
      "picture":"images/products/pants1.jpg",
      "old_price":120,
      "price":65
    },
    {
      "name":"Shoe",
      "picture":"images/products/shoe1.jpg",
      "old_price":190,
      "price":175
    },
    {
      "name":"Skirt",
      "picture":"images/products/skt2.jpeg",
      "old_price":160,
      "price":125
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Singleproducts(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            old_price: product_list[index]['old_price'],
            price: product_list[index]['price']
          );
        },);
  }
}

class Singleproducts extends StatelessWidget {

  late final product_name;
  late final  product_picture;
  late final price;
  late final old_price;

  Singleproducts({
   this.product_name,
   this.product_picture,
   this.old_price,
   this.price
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(onTap: () =>
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>ProductDetails(
                  product_detail_name: product_name,
                  product_detail_price: price,
                  product_detail_oldprice: old_price,
                  product_detail_picture: product_picture,
                ))),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(product_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
              ),
            title: Text("\$$price",textAlign: TextAlign.end,style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("\$$old_price",textAlign: TextAlign.end,style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough)),
              ),
          ),
    child: Image.asset(
    product_picture,
    fit: BoxFit.cover,
    ),
          ),
        ),
      ),
    ));
  }
}
