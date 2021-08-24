import 'package:flutter/material.dart';


class ProductDetails extends StatefulWidget {
  late final product_detail_name;
  late final product_detail_price;
  late final product_detail_oldprice;
  late final product_detail_picture;

  ProductDetails({this.product_detail_name,this.product_detail_picture,this.product_detail_oldprice,this.product_detail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0.0,
      title: Text('Ecommerce'),
      backgroundColor: Colors.red,
      actions: [
        IconButton(onPressed: (){
          //TODO
          print("Clicked Search");
        },icon: Icon(Icons.search, color: Colors.white),),
        IconButton(onPressed: (){
          //TODO
          print("Clicked Shopping Cart");
        },icon: Icon(Icons.shopping_cart, color: Colors.white),)
      ],
    ),

    body: ListView(
      children: [
        Container(
          height: 300,
          child: GridTile(
            child: Container(
              color: Colors.white,
              child: Image.asset(widget.product_detail_picture,
              fit: BoxFit.fill,
              ),

            ),
          footer: Container(
            color: Colors.white,
            child: ListTile(
              leading: Text("\$${widget.product_detail_price}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              title: Row(
                children: [
                  Expanded(
                      child:Text("\$${widget.product_detail_oldprice}",style: TextStyle(decoration: TextDecoration.lineThrough),)
                  ),

                ],
              ),
            ),
          ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Material(
            child: Text(widget.product_detail_name,style: TextStyle(fontSize: 20),textAlign: TextAlign.left,),
          ),
        ),
        Row(
          children: [
            Expanded(
                child:MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.black87,
                  elevation: 0.0,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Size")
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ) ),
            Expanded(
                child:MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.black87,
                  elevation: 0.0,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Color")
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ) ),
            Expanded(
                child:MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.black87,
                  elevation: 0.0,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Qty")
                      ),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                )
            ),

          ],

        ),
        Row(
          children: [
            Expanded(
                child:MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.0,
                    child: Text("Buy now")
                ) ),
            IconButton(onPressed: (){}, icon:Icon(Icons.add_shopping_cart),color: Colors.red),
            IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border),color: Colors.red)
          ],


        )

      ],
    ),
    );
  }
}

