import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/image/custom_image.dart';
import 'package:flutter_application_2/core/color/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Breakfast",
      "Lunch",
      "Dinner",
      "Vegan",
      "Starter",
    ];
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
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text("Hi! Diane"),
              Text("What are you cooking today"),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.pink,
                      ),
                      child: Text(categories[index]),
                    );
                  },
                ),
              ),
              Text("Trending Recipe"),
              // CustomImage(
              //   "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg",
              //   label: "Salami and cheese pizza",
              //   boxFit: BoxFit.cover,
              // ),
              Card(
                color: AppColors.redPink,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Your Recipes"),
                    // SizedBox(
                    //   height: 130,
                    //   child: ListView.builder(
                    //     itemCount: 3,
                    //     scrollDirection: Axis.horizontal,

                    //     itemBuilder: (context, index) {
                    //       return CustomImage("https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg", label: "Tiramisu",);
                    //     },
                    //   ),
                    // ),
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
