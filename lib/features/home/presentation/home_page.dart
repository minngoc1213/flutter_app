import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/custom_app_bar/custom_app_bar.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> categories = [
    "Breakfast",
    "Lunch",
    "Dinner",
    "Vegan",
    "Starter",
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(
        greeting: 'Hi! Diane',
        subtitle: 'What are you cooking today',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            spacing: 19,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    SizedBox(height: 19),
                    SizedBox(
                      height: 40,
                      child: ListView.separated(
                        itemCount: categories.length,
                        scrollDirection: .horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 19);
                        },
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 5,
                              ),
                              alignment: .center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: AppColors.transparent,
                              ),
                              child: Text(
                                categories[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.redPink,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 19),
                    Text(
                      "Trending Recipe",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.redPink,
                      ),
                    ),
                    SizedBox(height: 10),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 7,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: .all(color: AppColors.sweetPink),
                          ),
                          child: Column(
                            mainAxisAlignment: .end,
                            // crossAxisAlignment: .start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    "Salami and cheese pizza",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.timer, color: AppColors.sweetPink),
                                  Text(
                                    "30 min",
                                    style: TextStyle(
                                      color: AppColors.sweetPink,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      "This is a quick overview of the ingredients...",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "5",
                                    style: TextStyle(
                                      color: AppColors.sweetPink,
                                    ),
                                  ),
                                  Icon(Icons.star, color: AppColors.sweetPink),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: .circular(15),
                          child: SizedBox(
                            height: 143,
                            width: size.width,
                            child: Image.network(
                              "https://www.themealdb.com/images/category/goat.png",
                              fit: .fitWidth,
                              height: 169,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                color: AppColors.redPink,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 38,
                    vertical: 14,
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 9,
                    children: [
                      Text(
                        "Your Recipes",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 190,
                        width: size.width,
                        child: ListView.separated(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) =>
                              SizedBox(width: 25),
                          itemBuilder: (context, index) {
                            return Stack(
                              alignment: .bottomCenter,
                              children: [
                                ClipRRect(
                                  borderRadius: .circular(18),
                                  child: Container(
                                    height: 190,
                                    width: 162,
                                    alignment: .topCenter,
                                    child: Image.network(
                                      "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg",
                                      fit: .fitWidth,
                                      // height: 200,
                                      // width: 162,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: AppColors.white,
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  width: 162,
                                  height: 45,
                                  child: Column(
                                    mainAxisAlignment: .end,
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text("Tiramisu\n", maxLines: 1),
                                      Row(
                                        children: [
                                          Text(
                                            "5",
                                            style: TextStyle(
                                              color: AppColors.sweetPink,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: AppColors.sweetPink,
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.timer,
                                            color: AppColors.sweetPink,
                                          ),
                                          Text(
                                            "15 min",
                                            style: TextStyle(
                                              color: AppColors.sweetPink,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Top Chef",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.redPink,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 190,
                      width: size.width,
                      child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 25),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(8),
                                child: Image.network(
                                  "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg",
                                  fit: .cover,
                                  height: 74,
                                  width: 82,
                                ),
                              ),
                              Text("Andrew"),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
