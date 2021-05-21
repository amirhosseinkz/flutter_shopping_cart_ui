import 'package:flutter/material.dart';
import 'package:ui_test/view/style/color.dart';
import 'package:ui_test/view/style/textstyles.dart';

Widget listTileWidget(
    double price, String title, int count, String image, Size size) {
  return ListTile(
    leading: Stack(children: [
      Container(
        width: size.height * 0.085,
        height: size.height * 0.1,
        decoration: BoxDecoration(
            color: containerColor, borderRadius: BorderRadius.circular(15)),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Image.asset(image),
      ),
    ]),
    subtitle: RichText(
        text: TextSpan(text: "\$ ", style: dollarSignTextStyle, children: [
      TextSpan(text: price.toString(), style: priceTextStyle),
    ])),
    title: Text(
      title,
      style: productTitleTextStyle,
    ),
    trailing: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerColor,
      ),
      child: Text(
        'x$count',
        style: countTextStyle,
      ),
    ),
  );
}
