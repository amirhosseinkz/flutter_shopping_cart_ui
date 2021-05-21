import 'package:flutter/material.dart';
import 'package:ui_test/view/style/color.dart';
import 'package:ui_test/view/style/textstyles.dart';

Widget header(Size size) {
  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: iconBackGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0.1,
          child: Container(
            width: size.height * 0.07,
            height: size.height * 0.07,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: blackMain,
                )),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('assets/kz.jpg'),
              )),
          width: size.height * 0.07,
          height: size.height * 0.07,
        )
      ],
    ),
    Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text:
                  TextSpan(text: "Shopping", style: titleTextStyle, children: [
            TextSpan(text: "\nCart", style: titleSpanTextStyle),
          ])),
          IconButton(
            icon: Icon(
              Icons.delete_outline,
              color: orangeColor,
            ),
            onPressed: () {},
          )
        ],
      ),
    ),
  ]);
}
