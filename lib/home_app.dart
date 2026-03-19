import 'package:flutter/material.dart';
import 'package:flutter_application_2/common/dot_navigation_bar/dot_navigation_bar_item.dart';
import 'package:flutter_application_2/common/dot_navigation_bar/nav_bars.dart';
import 'package:flutter_application_2/core/color/app_color.dart';
import 'package:flutter_application_2/features/categories/presentation/pages/categories_provider.dart';
import 'package:flutter_application_2/features/home/presentation/pages/home_page.dart';
import 'package:flutter_application_2/features/home/presentation/pages/home_provider.dart';
import 'package:flutter_application_2/features/messenger/presentation/messenger_page.dart';
import 'package:flutter_application_2/features/profile/presentation/pages/profile_page.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    HomeProvider(),
    MessengerPage(),
    CategoriesProvider(),
    ProfilePageProvider(),
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
        // enableFloatingNavBar: false
        items: [
          DotNavigationBarItem(icon: Icon(Icons.home, color: handleColor(0))),

          /// Likes
          DotNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: handleColor(1)),
          ),

          /// Search
          DotNavigationBarItem(icon: Icon(Icons.search, color: handleColor(2))),

          /// Profile
          DotNavigationBarItem(icon: Icon(Icons.person, color: handleColor(3))),
        ],
      ),
    );
  }

  Color handleColor(int index) {
    if (_selectedIndex == index) {
      return Colors.white;
    }
    return Colors.black;
  }
}
