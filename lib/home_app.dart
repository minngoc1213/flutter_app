import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/dot_navigation_bar/dot_navigation_bar_item.dart';
import 'package:flutter_application_2/common/dot_navigation_bar/nav_bars.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/features/categories/presentation/categories_page.dart';
import 'package:flutter_application_2/features/home/presentation/home_page.dart';
import 'package:flutter_application_2/features/messenger/presentation/messenger_page.dart';
import 'package:flutter_application_2/features/profile/presentation/profile_page.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    HomePage(),
    MessengerPage(),
    CategoriesPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_selectedIndex],
      bottomNavigationBar: DotNavigationBar(
        backgroundColor: AppColors.redPink,
        currentIndex: _selectedIndex,
        onTap: (val) {
          setState(() {
            _selectedIndex = val;
          });
        },
        dotIndicatorColor: Colors.black,
        unselectedItemColor: AppColors.white,
        // enableFloatingNavBar: false
        items: [
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            unselectedColor: AppColors.white,
          ),

          /// Likes
          DotNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            unselectedColor: AppColors.white,
          ),

          /// Search
          DotNavigationBarItem(
            icon: Icon(Icons.search),
            unselectedColor: AppColors.white,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: Icon(Icons.person),
            unselectedColor: AppColors.white,
          ),
        ],
      ),
    );
  }
}
