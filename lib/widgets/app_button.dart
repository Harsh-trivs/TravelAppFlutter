import 'package:flutter/material.dart';
import 'package:learning_demo/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButton extends StatelessWidget {
  late bool isText;
  late String? text;
  late IconData? icon;
  late Color? backGroundColor = AppColors.buttonBackground;
  late Color? mainColor = AppColors.mainColor;
  AppButton({
    super.key,
    required this.isText,
    this.text,
    this.icon,
    this.mainColor,
    this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: backGroundColor),
        child: isText
            ? Center(
                child: AppText(
                text: text!,
                color: mainColor!,
                size: 14,
              ))
            : Icon(
                icon,
                color: mainColor,
              ));
  }
}
