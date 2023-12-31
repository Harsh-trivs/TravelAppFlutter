import 'package:flutter/material.dart';
import 'package:learning_demo/misc/colors.dart';

class ResponiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  bool isText = false;
  String? text;
  TextStyle? textStyle;

  ResponiveButton(
      {super.key,
      this.width,
      this.isResponsive = false,
      required this.isText,
      this.textStyle,
      this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      height: 60,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isText
              ? Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    text!,
                    style: textStyle,
                  ),
                )
              : SizedBox(),
          Container(
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.only(right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 10,
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 15,
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 18,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
