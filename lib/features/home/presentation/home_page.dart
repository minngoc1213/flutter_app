import 'package:flutter/material.dart';
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
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Hi! Diane",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: AppColors.redPink,
                ),
              ),
              Text(
                "What are you cooking today",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
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
              Text(
                "Trending Recipe",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.redPink,
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
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
                            ),
                            Spacer(),
                            Icon(Icons.timer, color: AppColors.sweetPink),
                            Text(
                              "30 min",
                              style: TextStyle(color: AppColors.sweetPink),
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
                              ),
                            ),

                            Text(
                              "5",
                              style: TextStyle(color: AppColors.sweetPink),
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
              // Card(
              //   color: AppColors.redPink,
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       Text("Your Recipes"),
              //       // SizedBox(
              //       //   height: 130,
              //       //   child: ListView.builder(
              //       //     itemCount: 3,
              //       //     scrollDirection: Axis.horizontal,

              //       //     itemBuilder: (context, index) {
              //       //       return CustomImage("https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg", label: "Tiramisu",);
              //       //     },
              //       //   ),
              //       // ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
