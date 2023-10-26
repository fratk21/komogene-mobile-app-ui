import 'package:flutter/material.dart';

class category extends StatefulWidget {
  final String name;
  final String image;
  final Function() function;
  const category(
      {super.key,
      required this.function,
      required this.image,
      required this.name});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.function();
      },
      child: Column(
        children: [
          Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Image.asset(
                  widget.image,
                ),
              ))),
          SizedBox(height: 10),
          Text(
            widget.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
