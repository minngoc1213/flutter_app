import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String backgroundDir = 'assets/png/onboarding.png';
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(backgroundDir),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.transparent],
                begin: AlignmentGeometry.topCenter,
                end: AlignmentGeometry.bottomCenter,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.transparent],
                begin: AlignmentGeometry.bottomCenter,
                end: AlignmentGeometry.topCenter,
              ),
            ),
          ),
          Column(
            children: [
              Text("Get inspired"),
              Text("Get inspired with our daily recipe recommendations."),
              SizedBox(height: 500),
              ElevatedButton(onPressed: () => {}, child: Text("Continue")),
            ],
          ),
        ],
      ),
    );
  }
}
