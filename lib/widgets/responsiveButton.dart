import 'package:flutter/material.dart';
import 'package:learning_demo/misc/colors.dart';

class ResponiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponiveButton({super.key, this.width, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
    );
  }
}
