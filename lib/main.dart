import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ordo_flutter/config/config.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 2);
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: PersistentTabView(
          context,
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style12, // C
        ));
  }
}

List<Widget> _buildScreens() {
  return [
    const AssignmentScreen(),
    const SwapScreen(),
    const HomeScreen(),
    const AssesmentScreen(),
    const ProfileScreen()
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      iconSize: 24,
      icon: const FaIcon(FontAwesomeIcons.clipboardList),
      activeColorPrimary: greenTukode,
      inactiveColorPrimary: greyNavbar,
    ),
    PersistentBottomNavBarItem(
      iconSize: 24,
      icon: const FaIcon(FontAwesomeIcons.exchangeAlt),
      activeColorPrimary: greenTukode,
      inactiveColorPrimary: greyNavbar,
    ),
    PersistentBottomNavBarItem(
      iconSize: 24,
      icon: const FaIcon(FontAwesomeIcons.home),
      activeColorPrimary: greenTukode,
      inactiveColorPrimary: greyNavbar,
    ),
    PersistentBottomNavBarItem(
      iconSize: 24,
      icon: const FaIcon(FontAwesomeIcons.chartBar),
      activeColorPrimary: greenTukode,
      inactiveColorPrimary: greyNavbar,
    ),
    PersistentBottomNavBarItem(
      iconSize: 24,
      icon: const FaIcon(FontAwesomeIcons.user),
      activeColorPrimary: greenTukode,
      inactiveColorPrimary: greyNavbar,
    ),
  ];
}
