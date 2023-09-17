import 'package:flutter/material.dart';
import 'package:learning_demo/misc/colors.dart';
import 'package:learning_demo/widgets/app_text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      width: double.maxFinite,
      child: Card(
        elevation: 3,
        child: Container(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_circle_up,
                        color: AppColors.textColor2,
                      ),
                      AppText(
                        text: "23 Jan 2023",
                        size: 14,
                        color: AppColors.textColor2,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_circle_down,
                        color: AppColors.textColor2,
                      ),
                      AppText(
                        text: "23 Jan 2023",
                        size: 16,
                        color: AppColors.textColor2,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "New York",
                    size: 14,
                    color: Colors.black,
                  ),
                  AppText(
                    text: "Boston",
                    size: 14,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "NYC",
                    size: 36,
                    color: Colors.black,
                    weight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.textColor2,
                      ),
                      AppText(
                        text: "-----------------------------",
                        size: 14,
                        color: AppColors.textColor2,
                      ),
                      RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.airplanemode_on,
                            color: AppColors.textColor2,
                          ))
                    ],
                  ),
                  AppText(
                    text: "BOS",
                    size: 36,
                    weight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "05:35",
                    size: 18,
                    color: Colors.black,
                  ),
                  AppText(
                    text: "07:15",
                    size: 18,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
