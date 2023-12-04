import 'package:batch_31b/views/my_calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: SafeArea(child: MyCalculator())),
  ));
}
