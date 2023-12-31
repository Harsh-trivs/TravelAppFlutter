import 'package:flutter/material.dart';
import 'package:learning_demo/misc/colors.dart';
import 'package:learning_demo/pages/balloning_options.dart';
import 'package:learning_demo/pages/detail_page.dart';
import 'package:learning_demo/widgets/app_large_text.dart';
import 'package:learning_demo/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List cardImages = [
    'assets/mountain_1.jpg',
    'assets/mountain_2.jpg',
    'assets/mountain_3.jpeg',
  ];
  var iconImages = {
    "balloning": "assets/balloning.jpg",
    "hiking": "assets/hiking.jpg",
    "kayaking": "assets/kayaking.jpg",
    "snorkling": "assets/snorkling.png",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              margin: EdgeInsets.only(left: 20),
              child: AppLargeText(text: "Discover")),
          SizedBox(
            height: 20,
          ),
          // tabBar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 30),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  isScrollable: true,
                  dividerColor: Colors.white,
                  // indicator:
                  //     CircleTabIndicator(color: AppColors.mainColor, radius: 4),
                  tabs: [
                    Tab(text: "places"),
                    Tab(text: "Inspirations"),
                    Tab(text: "Emotions"),
                  ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailPage()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(cardImages[index]),
                                fit: BoxFit.cover)),
                      ),
                    );
                  }),
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(
                  text: 'Explore more',
                  size: 22,
                ),
                AppText(
                  text: 'See all',
                  color: AppColors.textColor1,
                  size: 18,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BalloningPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            //margin: const EdgeInsets.only(right: 20),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        iconImages.values.elementAt(index)),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: AppText(
                              text: iconImages.keys.elementAt(index),
                              color: AppColors.textColor2,
                              size: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
