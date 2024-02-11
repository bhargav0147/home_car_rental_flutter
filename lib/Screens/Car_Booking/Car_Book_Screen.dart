import 'package:flutter/material.dart';

class CarBookScreen extends StatefulWidget {
  const CarBookScreen({super.key});

  @override
  State<CarBookScreen> createState() => _CarBookScreenState();
}

class _CarBookScreenState extends State<CarBookScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('Car Book'),),
    ));
  }
}