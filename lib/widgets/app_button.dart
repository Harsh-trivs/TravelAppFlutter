import 'package:flutter/material.dart';

import '../misc/colors.dart';

class AppButton extends StatefulWidget {
  late bool isText;
  late String? text;
  late IconData? icon;
  late Function onPressedFunction;
  late Color? backGroundColor = AppColors.buttonBackground;
  late Color? mainColor = AppColors.mainColor;
  AppButton(
      {super.key,
      required this.isText,
      this.text,
      this.icon,
      this.mainColor,
      this.backGroundColor,
      required this.onPressedFunction});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: widget.backGroundColor),
        child: widget.isText
            ? TextButton(
                child: Text(
                  widget.text!,
                  style: TextStyle(fontSize: 14, color: widget.mainColor),
                ),
                onPressed: () => {widget.onPressedFunction},
              )
            : IconButton(
                onPressed: () => {widget.onPressedFunction},
                icon: Icon(
                  widget.icon,
                  color: widget.mainColor,
                )));
  }
}
