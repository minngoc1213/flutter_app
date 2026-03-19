import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final String backgroundDir1 = 'assets/png/onboarding1.png';

  final String backgroundDir2 = 'assets/png/onboarding2.png';

  int index = 0;

  final PageController _pageController = .new();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: (index != 0)
            ? IconButton(
                onPressed: () {
                  index--;
                  _pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                  setState(() {});
                },
                icon: Icon(Icons.arrow_back),
              )
            : SizedBox(),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [firstPage(size), secondPage(size), thirdPage(size, context)],
      ),
    );
  }

  Widget firstPage(Size size) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "Get inspired",
              style: TextStyle(fontSize: 20, fontWeight: .w600),
            ),
            Text(
              "Get inspired with our daily recipe recommendations.",
              style: TextStyle(fontSize: 13, fontWeight: .w400),
            ),
          ],
        ),
        SizedBox(height: 44),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundDir1),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.transparent],
                      begin: .topCenter,
                      end: .bottomCenter,
                    ),
                  ),
                ),
                Spacer(),
                Stack(
                  alignment: .center,
                  children: [
                    Container(
                      height: size.height * 0.2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Colors.transparent],
                          begin: .bottomCenter,
                          end: .topCenter,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        index++;
                        _pageController.animateToPage(
                          index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.pink,
                        padding: EdgeInsets.symmetric(
                          horizontal: 56,
                          vertical: 7,
                        ),
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: .w600,
                          color: AppColors.sweetPink,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget secondPage(Size size) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "Get an increase your skills",
              style: TextStyle(fontSize: 20, fontWeight: .w600),
            ),
            Text(
              "Learn essential cooking techniques at your own pace.",
              style: TextStyle(fontSize: 13, fontWeight: .w400),
            ),
          ],
        ),
        SizedBox(height: 44),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundDir2),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.transparent],
                      begin: .topCenter,
                      end: .bottomCenter,
                    ),
                  ),
                ),
                Spacer(),
                Stack(
                  alignment: .center,
                  children: [
                    Container(
                      height: size.height * 0.2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Colors.transparent],
                          begin: .bottomCenter,
                          end: .topCenter,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        index++;
                        _pageController.animateToPage(
                          index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.pink,
                        padding: EdgeInsets.symmetric(
                          horizontal: 56,
                          vertical: 7,
                        ),
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: .w600,
                          color: AppColors.sweetPink,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget thirdPage(Size size, BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: [
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 27,
              mainAxisSpacing: 27,
              childAspectRatio: 1,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Image(
                image: AssetImage("assets/png/onboarding3_$index.png"),
                width: 166,
                height: 166,
                fit: .cover,
              );
            },
          ),
          Text("Welcome", style: TextStyle(fontSize: 25, fontWeight: .w600)),
          Text(
            "Find the best recipes that the world can provide you also with every step that you can learn to increase your cooking skills.",
            style: TextStyle(fontSize: 13, fontWeight: .w400),
            textAlign: .center,
            maxLines: 3,
          ),
          SizedBox(height: 28),
          SizedBox(
            width: 207,
            child: ElevatedButton(
              onPressed: () {
                context.go(AppRouteName.registerScreen);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.pink,
                padding: EdgeInsets.symmetric(vertical: 7),
              ),
              child: Text(
                "I'm New",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: .w600,
                  color: AppColors.sweetPink,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 207,
            child: ElevatedButton(
              onPressed: () {
                context.go(AppRouteName.loginScreen);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.pink,
                padding: EdgeInsets.symmetric(vertical: 7),
              ),
              child: Text(
                "I've Been Here",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: .w600,
                  color: AppColors.sweetPink,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
