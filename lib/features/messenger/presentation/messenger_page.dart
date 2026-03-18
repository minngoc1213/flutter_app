import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class MessengerPage extends StatelessWidget {
  MessengerPage({super.key});
  final List<String> categories = ["Top Recipes", "Newest", "Oldest"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Community",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.redPink,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Column(
              children: [
                SizedBox(
                  height: 40, 
                  child: Row(
                    children: categories.map((item) {
                      return Expanded(
                        child: GestureDetector(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 5,
                            ),
                            alignment: .center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: item == "Top Recipes"
                                  ? AppColors.redPink
                                  : AppColors.transparent,
                            ),
                            child: Text(
                              item,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: item == "Top Recipes"
                                    ? AppColors.white
                                    : AppColors.redPink,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 16),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            const Image(
                              image: AssetImage("assets/png/avatar.png"),
                              height: 35,
                              width: 35,
                            ),
                            SizedBox(width: 15,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: .start,
                                children: const [
                                  Text("@josh-ryan", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                                  Text("2 years ago",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.sweetPink)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        ClipRRect(
                          borderRadius: .vertical(top: Radius.circular(18)),
                          child: Image.network(
                            "https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg",
                            fit: .cover,
                            height: 173,
                            width: 356,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 7,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: .vertical(
                              bottom: Radius.circular(18),
                            ),
                            border: .all(color: AppColors.sweetPink),
                            color: AppColors.redPink,
                          ),
                          child: Column(
                            mainAxisAlignment: .end,
                            crossAxisAlignment: .start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Chicken Curry",
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(Icons.star, color: AppColors.white),
                                  Text(
                                    "5",
                                    style: TextStyle(color: AppColors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "This recipe requires basic ingredients and minimal prep time, making it ideal for busy days",
                                      softWrap: true,
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        overflow: .ellipsis,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timer,
                                            size: 10,
                                            color: AppColors.white,
                                          ),
                                          Text(
                                            "45 min",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "2.458",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.white,
                                            ),
                                          ),
                                          Icon(
                                            Icons.comment,
                                            size: 10,
                                            color: AppColors.white,
                                          ),
                                        ],
                                      ),
                                    ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
