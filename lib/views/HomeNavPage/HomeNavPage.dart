import 'package:flutter/material.dart';
import 'package:petsco/style.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:petsco/views/Favourite/FavouriteProduct.dart';
import 'package:petsco/views/cart/CartView.dart';
import 'package:petsco/views/categories/CategoriesView.dart';
import 'package:petsco/views/home/HomeScreen.dart';
import 'package:petsco/views/profile/Profile.dart';
import '../../pre/my_flutter_app_icons.dart' as petsco;

class HomeNavPage extends StatefulWidget {
  @override
  State createState() => _HomeNavPage();
}

class _HomeNavPage extends State<HomeNavPage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            HomeScreen(),
            CartView(),
            FavouriteProducts(),
            Categories(),
            ProfileView()
          ],
        ),
      ),
      backgroundColor:
          _currentIndex == 1 ? Color(0xff21295C) : Color(0xffF3FAEE),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavyBar(
            selectedIndex: _currentIndex,
            onItemSelected: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                  activeColor: mainColor,
                  title: Text(
                    'Home',
                    style: smallGreenTextStyle,
                  ),
                  icon: _currentIndex == 0
                      ? Icon(petsco.MyFlutterApp.home__1_)
                      : Icon(petsco.MyFlutterApp.home_run)),
              BottomNavyBarItem(
                  activeColor: mainColor,
                  title: Text('Cart'),
                  icon: _currentIndex == 1
                      ? Icon(petsco.MyFlutterApp.cart)
                      : Icon(petsco.MyFlutterApp.cartfilled)),
              BottomNavyBarItem(
                  activeColor: mainColor,
                  title: Text('Favourites'),
                  icon: _currentIndex == 2
                      ? Icon(petsco.MyFlutterApp.heart__2_)
                      : Icon(petsco.MyFlutterApp.heart__1_)),
              BottomNavyBarItem(
                  activeColor: mainColor,
                  title: Text('Categories'),
                  icon: _currentIndex == 3
                      ? Icon(petsco.MyFlutterApp.menu__1_)
                      : Icon(petsco.MyFlutterApp.menu)),
              BottomNavyBarItem(
                  activeColor: mainColor,
                  title: Text('Account'),
                  icon: _currentIndex == 4
                      ? Icon(petsco.MyFlutterApp.user__7_)
                      : Icon(petsco.MyFlutterApp.user__3_))
            ],
          ),
        ),
      ),
    );
  }
}
