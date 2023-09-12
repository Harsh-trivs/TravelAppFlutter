import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learning_demo/misc/colors.dart';
import 'package:learning_demo/widgets/app_large_text.dart';
import 'package:learning_demo/widgets/app_text.dart';
import 'package:learning_demo/widgets/responsiveButton.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome_image_3.jpg",
    "welcome_image_1.jpg",
    "welcome_image_2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/' + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(
                          text: "Mountain",
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                              size: 14,
                              color: AppColors.textColor2,
                              text:
                                  "Mountains hikes give you an incredible sense of freedom along with endurance"),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ResponiveButton(
                          width: 120,
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (ind) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == ind ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: ind == index
                                  ? AppColors.mainColor
                                  : AppColors.mainColor.withOpacity(0.3)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
