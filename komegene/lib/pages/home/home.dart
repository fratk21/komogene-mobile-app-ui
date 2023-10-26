import 'package:flutter/material.dart';
import 'package:komegene/core/model/pagemodel.dart';
import 'package:komegene/core/utils/colors.dart';
import 'package:komegene/pages/home/view/view.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _images = [
    'assets/image/image1.jpg',
    'assets/image/image2.jpg',
    'assets/image/image3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return PageModel(
      appBar: appbarhome(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ScrollPageView(
                controller: ScrollPageController(),
                children: _images.map((image) => imageView(image)).toList(),
              ),
            ),
            categoryHome(context),
            SizedBox(
              height: 10,
            ),
            ListViewHome()
          ],
        ),
      ),
    );
  }
}
