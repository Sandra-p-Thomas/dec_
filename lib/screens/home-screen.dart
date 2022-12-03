import 'package:flutter/material.dart';
import 'package:slacks_test/screens/cart_screen.dart';
import 'package:slacks_test/screens/detail_page_1.dart';
import 'package:slacks_test/screens/detail_page_2.dart';
import 'package:slacks_test/screens/logout.dart';
import 'package:slacks_test/screens/wishlist.dart';
import 'detail_page.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> Cart()));
          }, icon:Icon(Icons.shopping_cart_rounded) )
        ],
      ),
        body: SafeArea(
               child: GridView(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                    crossAxisSpacing: 16,
                  mainAxisSpacing: 16
                ),
                primary: false,
                padding: const EdgeInsets.all(30),
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => DetailPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/flower.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Detailpage_1()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/product_3.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => DetailPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/baggy.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => DetailPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/cloth.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => DetailPage_3()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/products/ex.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
          ),
      InkWell(
          onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DetailPage()));
          },
          child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/cloth.jpg'),
                      fit: BoxFit.cover),
                ),
          ),
      ),
      InkWell(
          onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DetailPage()));
          },
          child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/print.png'),
                      fit: BoxFit.cover),
                ),
          ),
      ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => DetailPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/cloth.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => DetailPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/print.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
     ]
   ),
           ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
               color: Colors.black,
              ),
              child: CircleAvatar(
                radius:0.5,
               backgroundColor: Colors.white,
              )
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.black,),
               title: const Text('Favourite'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag,color: Colors.black),
              title: const Text('Wishlist'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Wish()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.black,),
              title: const Text('settings'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart,color: Colors.black,),
              title: Text('My orders'),
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined,color: Colors.black,),
              title: const Text('Log out'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Logout()));
              },
            ),
          ],
        ),
      ),
    );
  }

}
