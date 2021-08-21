import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Blank'), accountEmail: Text('gracenoteii5@gmai.com'),currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(Icons.person),
            ),
            decoration: BoxDecoration(
              color: Colors.red
            ),
            ),
            InkWell(
           onTap: (){
             //TODO
             print("Home btn Tapped");
           },
           child: ListTile(
            title: Text('HomePage'),
             leading: Icon(Icons.home),
           ),
         ),
            InkWell(
              onTap: (){
                //TODO
                print("Account btn Tapped");
              },
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){
                //TODO
                print("Orders btn Tapped");
              },
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){
                //TODO
                print("Categories btn Tapped");
              },
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){
                //TODO
                print("Favourites btn Tapped");
              },
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){
                //TODO
                print("Settings btn Tapped");
              },
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){
                //TODO
                print("About btn Tapped");
              },
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

