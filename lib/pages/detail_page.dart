import 'package:flutter/material.dart';
import 'package:learning_demo/misc/colors.dart';
import 'package:learning_demo/widgets/app_large_text.dart';
import 'package:learning_demo/widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStar = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/mountain_1.jpg'),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Positioned(
                left: 15,
                top: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        )),
                  ],
                )),
            Positioned(
              top: 270,
              left: 0,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: 'Yosemite',
                          color: Colors.black.withOpacity(0.8),
                        ),
                        AppLargeText(
                          text: '\$300',
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: AppColors.mainColor),
                        AppText(
                          text: 'Pune,Maharastra',
                          color: AppColors.textColor1,
                          size: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return index > gottenStar - 1
                                ? Icon(
                                    Icons.star_outline,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  );
                          }),
                        ),
                        AppText(
                          text: '($gottenStar.0)',
                          size: 14,
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20),
                    AppText(
                      size: 16,
                      text: "Number of people in your group",
                      color: AppColors.mainTextColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.buttonBackground),
                        );
                      }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
