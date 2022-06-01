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
          FavoriteTap(),
          HomePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Color.fromARGB(255, 104, 233, 214),
        currentIndex: currentIndex,
        onTap: (index) {
          pageController.animateToPage(index,
              duration: const Duration(milliseconds: 100),
              curve: Curves.bounceIn);
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            // icon: Icon(Icons.favorite),
            // label: 'favorite',

            icon: Icon(Icons.star_border_rounded,
                color: Colors.black38, size: 25),
            label: "Favourites",

            //backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: "Home",
            // icon: Icon(Icons.home),
            // label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded,
                color: Colors.black38, size: 30),
            label: "Profile",
            // icon: Icon(Icons.person),
            // label: 'profil',
          ),
        ],
      ),
    );
  }
}
