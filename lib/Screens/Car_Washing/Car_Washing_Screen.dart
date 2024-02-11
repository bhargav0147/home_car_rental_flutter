import 'package:flutter/material.dart';

class CarWashingScreen extends StatefulWidget {
  const CarWashingScreen({super.key});

  @override
  State<CarWashingScreen> createState() => _CarWashingScreenState();
}

class _CarWashingScreenState extends State<CarWashingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('Car Wash'),),
    ));
  }
}