import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_test/models/product.dart';
import 'package:ui_test/view/style/color.dart';
import 'package:ui_test/view/widgets/bottom_navigation.dart';
import 'package:ui_test/view/widgets/bottom_section.dart';
import 'package:ui_test/view/widgets/header.dart';
import 'package:ui_test/view/widgets/list_tile.dart';

class HomeScreen extends StatelessWidget {

  List<Product> product = [
    Product('assets/shoe.png', 'Nike Air Max 200', 240.0, 1),
    Product('assets/shoe.png', 'Nike Air Max 97', 190.0, 2),
    Product('assets/shoe.png', 'Nike Air Max 92607', 220.0, 1),
    Product('assets/shoe.png', 'Nike Air Max 200', 240.0, 2),
  ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        bottomNavigationBar: bottomNavigation(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Column(
             children: [

               header(size),

                for (int i = 0; i < product.length; i++)
                  listTileWidget
                    (
                      product[i].price,
                      product[i].title,
                      product[i].count,
                      product[i].image,
                      size)
               ,

               bottomSection(size),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
