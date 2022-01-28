import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giventa_app/my_flutter_app_icons.dart';
import 'package:giventa_app/screens/fav_page.dart';
import 'package:giventa_app/screens/home_screen.dart';
import 'package:giventa_app/screens/products_page.dart';
import 'package:giventa_app/screens/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    homeScreen(),
    ProductsPage(),
    favPage(),
    profilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = homeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.amber.shade600,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        elevation: 3,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = homePage();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/vuesax-twotone-home-2.svg",
                            color: currentTab == 0
                                ? Colors.amber.shade400
                                : Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    color: currentTab == 0
                                        ? Colors.amber.shade400
                                        : Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = ProductsPage();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/vuesax-twotone-element-4.svg",
                            color: currentTab == 1
                                ? Colors.amber.shade400
                                : Colors.grey,
                          ),
                          Text(
                            'Products',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    color: currentTab == 1
                                        ? Colors.amber.shade400
                                        : Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = favPage();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/vuesax-twotone-heart.svg",
                            color: currentTab == 2
                                ? Colors.amber.shade400
                                : Colors.grey,
                          ),
                          Text(
                            'Wishlist',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    color: currentTab == 2
                                        ? Colors.amber.shade400
                                        : Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = profilePage();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/vuesax-twotone-user-square.svg",
                            color: currentTab == 3
                                ? Colors.amber.shade400
                                : Colors.grey,
                          ),
                          Text(
                            'My Account',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    color: currentTab == 3
                                        ? Colors.amber.shade400
                                        : Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
