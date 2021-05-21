import 'package:flutter/material.dart';
import 'package:ui_test/view/style/color.dart';
import 'package:ui_test/view/style/textstyles.dart';

Widget bottomSection(Size size) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Divider(
          color: containerColor,
          thickness: 1,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '4 Items',
            style: itemsTextStyle,
          ),
          Text("\$1320.0", style: sumTextStyle),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 35),
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10),
            width: size.width * 0.75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: orangeColor),
            child: Center(
              child: Text('Next', style: buttonTextStyle),
            ),
          ),
        ),
      )
    ],
  );
}
