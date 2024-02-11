// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homecarrental/Screens/Car_Booking/Car_Book_Screen.dart';
import 'package:homecarrental/Screens/Car_Washing/Car_Washing_Screen.dart';
import 'package:homecarrental/Screens/Profile/Profile_Screen.dart';
import 'package:homecarrental/Screens/Room/Room_Screen.dart';
import 'package:homecarrental/Screens/Setting/Setting_Screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DashController extends GetxController
{
  late PersistentTabController tabController;
  
  RxList<Widget> screensList = [
    const RoomScreen(),
    const CarBookScreen(),
    const CarWashingScreen(),
    const ProfileScreen(),
    const SettingScreen()
  ].obs;

  @override
  void onInit() {
    super.onInit();
    tabController = PersistentTabController(initialIndex: 0);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}