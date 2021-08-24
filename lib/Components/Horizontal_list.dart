import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
        Category(image_caption: 'Shirts', image_location: 'images/cats/tshirt.png'),
          Category(image_caption: 'Dress', image_location: 'images/cats/dress.png'),
          Category(image_caption: 'Formal', image_location: 'images/cats/formal.png'),
          Category(image_caption: 'Informal', image_location: 'images/cats/informal.png'),
          Category(image_caption: 'Jeans', image_location: 'images/cats/jeans.png'),
          Category(image_caption: 'Shoes', image_location: 'images/cats/shoe.png'),
          Category(image_caption: 'Accesssories', image_location: 'images/cats/accessories.png'),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {

  late final String image_location;
  late final String image_caption;

  Category({required this.image_caption, required this.image_location

  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,width: 100.0,height: 80.0),
            subtitle: Text(image_caption,textAlign: TextAlign.center,),
          ),
        ),
    ),
    );
  }
}
