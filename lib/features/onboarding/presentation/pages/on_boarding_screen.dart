import 'package:flutter/material.dart';
import 'package:flutter_application_2/router/app_router.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final String backgroundDir1 = 'assets/png/onboarding1.png';
  final String backgroundDir2 = 'assets/png/onboarding2.png';

  final PageController _pageController = .new();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [Page1(size), Page2(size), Page3(size, context)],
      ),
    );
  }

  Widget Page1(Size size) {
    return Column(
      children: [
        Container(
          height: size.height * 0.2,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text("Get inspired"),
              Text("Get inspired with our daily recipe recommendations."),
            ],
          ),
        ),
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
                        _pageController.animateToPage(
                          1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                      child: Text("Continue"),
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

  Widget Page2(Size size) {
    return Column(
      children: [
        Container(
          height: size.height * 0.2,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              IconButton(
                onPressed: () {
                  _pageController.animateToPage(
                    0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
                icon: Icon(Icons.arrow_back),
              ),
              Text("Get an increase your skills"),
              Text("Learn essential cooking techniques at your own pace."),
            ],
          ),
        ),
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
                        _pageController.animateToPage(
                          2,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                      child: Text("Continue"),
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

  Widget Page3(Size size, BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            _pageController.animateToPage(
              1,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Image(
              image: AssetImage("assets/png/onboarding3_$index.png"),
            );
          },
        ),
        Text("Welcome"),
        Text(
          "Find the best recipes that the world can provide you also with every step that you can learn to increase your cooking skills.",
        ),
        ElevatedButton(
          onPressed: () {
            _pageController.animateToPage(
              2,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          child: Text("I'm New"),
        ),
        ElevatedButton(
          onPressed: () {
            context.go(AppRouteName.loginScreen);
          },
          child: Text("I've Been Here"),
        ),
      ],
    );
  }
}
