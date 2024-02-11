// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../Core/App_Color.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
              ToggleSwitch(
                minWidth: double.infinity,
                initialLabelIndex: 0,
                fontSize: 20,
                animate: true,
                animationDuration: 150,
                totalSwitches: 2,
                activeBgColor: [AppColors.primaryBlue],
                borderColor: [AppColors.primaryBlue],
                activeBorders: [Border.all(color: AppColors.primaryBlue)],
                inactiveBgColor: AppColors.white,
                inactiveFgColor: AppColors.primaryBlue,
                labels: ['Hotels', 'Villas'],
                onToggle: (index) {},
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
