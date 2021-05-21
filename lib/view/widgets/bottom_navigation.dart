import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_test/view/style/color.dart';

Widget bottomNavigation() {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[

      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
      BottomNavigationBarItem(icon: Icon(Icons.school), label: 'school'),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite'),

    ],

    currentIndex: 3,
    selectedItemColor: orangeColor,
    unselectedItemColor: unSelectedColor,
    backgroundColor: iconBackGroundColor,

  );
}
