import 'package:flutter/material.dart';
import 'package:komegene/pages/home/home.dart';

Widget buildSafeAreaWithPageView(
  PageController _pageController,
) {
  return SafeArea(
    child: PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: <Widget>[
        const Home(),
        const Home(),
        const Home(),
        const Home(),
        const Home(),
      ],
    ),
  );
}
