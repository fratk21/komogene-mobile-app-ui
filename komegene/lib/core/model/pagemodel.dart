import 'package:flutter/material.dart';

class PageModel extends StatefulWidget {
  final AppBar? appBar;
  final Widget body;
  final FloatingActionButton? floatingActionButton;
  final Widget? bottomNavigationBar;

  PageModel({
    Key? key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
    this.bottomNavigationBar,
  }) : super(key: key);

  @override
  _PageModelState createState() => _PageModelState();
}

class _PageModelState extends State<PageModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: widget.body,
      floatingActionButton: widget.floatingActionButton,
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
