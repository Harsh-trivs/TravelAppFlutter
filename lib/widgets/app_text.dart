import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final FontWeight? weight;
  AppText(
      {super.key,
      this.weight,
      this.size = 30,
      required this.text,
      this.color = Colors.black54});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          // backgroundColor: Colors.white,
          fontSize: size,
          fontWeight: weight,
        ));
  }
}
