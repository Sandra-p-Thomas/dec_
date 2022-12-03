import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
class Page_3 extends StatefulWidget {
  const Page_3({Key? key}) : super(key: key);

  @override
  State<Page_3> createState() => _Page_3State();
}

class _Page_3State extends State<Page_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(child:
          FavoriteButton(
            valueChanged: (_isFavorite) {
              print('Is Favorite $_isFavorite)');
            },
          )
        ),
    );
  }
}
