// ignore_for_file: file_names

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homecarrental/Screens/Room/Room_Controller.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../Core/Funcation/Hotel_Service.dart';
import '../../Utils/App_Color.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  RoomController controller = Get.put(RoomController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find room',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
              fontFamily: 'pop'),
        ),
        actions: [
          ToggleSwitch(
            minWidth: 60.0,
            minHeight: 28,
            cornerRadius: 20.0,
            activeBgColors: const [
              [AppColors.green],
              [AppColors.red]
            ],
            activeFgColor: AppColors.white,
            inactiveBgColor: AppColors.grey.withOpacity(0.7),
            inactiveFgColor: AppColors.white,
            initialLabelIndex: 0,
            totalSwitches: 2,
            labels: const ['Stay', 'Pass'],
            radiusStyle: true,
            onToggle: (index) {},
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.filter_alt_rounded,
            size: 28,
            color: AppColors.primaryBlue,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ToggleSwitch(
                minWidth: double.infinity,
                initialLabelIndex: 0,
                fontSize: 20,
                animate: true,
                animationDuration: 150,
                totalSwitches: 2,
                activeBgColor: const [AppColors.primaryBlue],
                borderColor: const [AppColors.primaryBlue],
                activeBorders: [Border.all(color: AppColors.primaryBlue)],
                inactiveBgColor: AppColors.white,
                inactiveFgColor: AppColors.primaryBlue,
                labels: const ['Hotels', 'Villas'],
                onToggle: (index) {},
              ),
              const SizedBox(
                height: 20,
              ),
              FutureBuilder(
                future:
                    getNearestHotels(), // Call getNearestHotels() function here
                builder: (BuildContext context,
                    AsyncSnapshot<List<String>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    // Return a loading indicator while waiting for the future to complete
                    return CircularProgressIndicator();
                  } else if (snapshot.hasError || snapshot.data == null) {
                    // Return an error message if an error occurred or no data found
                    return Text('No data found or error: ${snapshot.error}');
                  } else {
                    // Return the DropdownSearch widget with the list of nearest hotels as items
                    return DropdownSearch<String>(
                      popupProps: const PopupProps.menu(
                        showSelectedItems: true,
                      ),
                      items: snapshot.data!,
                      dropdownDecoratorProps: const DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          suffixIconColor: AppColors.primaryBlue,
                          disabledBorder: InputBorder.none,
                          iconColor: AppColors.primaryBlue,
                          icon: Icon(
                            Icons.location_on_outlined,
                            color: AppColors.primaryBlue,
                            size: 24,
                          ),
                          labelText: "Where do you want",
                          labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryBlue,
                            fontFamily: 'pop',
                          ),
                        ),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
