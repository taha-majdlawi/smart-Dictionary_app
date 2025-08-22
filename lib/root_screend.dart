import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:smart_dictionary_app/screens/History.dart';
import 'package:smart_dictionary_app/screens/chat_screen.dart';
import 'package:smart_dictionary_app/screens/fav_screen.dart';

import 'package:smart_dictionary_app/screens/home_screen.dart';
import 'package:smart_dictionary_app/screens/profile.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late PageController pageController;
  int currentScreen = 0;
  List<Widget> screens = [
    const HomeScreen(),
    ChatScreen(),
    FavScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: screens,
        physics: NeverScrollableScrollPhysics(),
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreen,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        height: kBottomNavigationBarHeight,
        onDestinationSelected: (index) {
          setState(() {
            currentScreen = index;
            pageController.jumpToPage(currentScreen);
          });
        },
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.home),
            icon: Icon(IconlyLight.home),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.search),
            icon: Icon(IconlyLight.search),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.bag_2),
            icon: Icon(IconlyLight.bag_2),
            label: 'Cart',
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.profile),
            icon: Icon(IconlyLight.profile),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
