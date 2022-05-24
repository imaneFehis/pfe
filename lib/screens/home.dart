import 'package:flutter/material.dart';
import 'package:log_page_imane/screens/favorite_tap.dart';
import 'package:log_page_imane/screens/profile_tap.dart';
import 'package:log_page_imane/screens/home_tap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(initialPage: 1);
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          /// favorite
          FavoriteTap(),
          HomeTap(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        currentIndex: currentIndex,
        onTap: (index) {
          pageController.animateToPage(index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.bounceIn);
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favorite',

            //backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profil',
          ),
        ],
      ),
    );
  }
}
