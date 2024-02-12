// ignore_for_file: file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homecarrental/Utils/App_Color.dart';
import 'package:homecarrental/Screens/Dashboard/Dash_Controller.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  final DashController controller = Get.put(DashController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Obx(() {
          return PersistentTabView(
            context,
            controller: controller.tabController,
            screens: controller.screensList.toList(),
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: AppColors.primaryBlue, // Default is Colors.white.
            handleAndroidBackButtonPress: true, // Default is true.
            resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
            stateManagement: true, // Default is true.
            hideNavigationBarWhenKeyboardShows: false, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10.0),
              colorBehindNavBar: AppColors.primaryBlue,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle.style10,
          );
        }),
      ),
    );
  }
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.meeting_room_outlined),
      title: "Room",
      activeColorPrimary: AppColors.white,
      activeColorSecondary: AppColors.primaryBlue
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.car_crash),
      title: "Car Book",
      activeColorPrimary: AppColors.white,
      activeColorSecondary: AppColors.primaryBlue
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.car_repair_outlined),
      title: "Car Wash",
      activeColorPrimary: AppColors.white,
      activeColorSecondary: AppColors.primaryBlue
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      title: "Profile",
      activeColorPrimary: AppColors.white,
      activeColorSecondary: AppColors.primaryBlue
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.settings),
      title: "Settings",
      activeColorPrimary: AppColors.white,
      activeColorSecondary: AppColors.primaryBlue
    ),
  ];
}
