import 'package:bmicalc/bmi.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
  Future.delayed(Duration(seconds: 4),() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Bmii(),));
  },);
    return Scaffold(body: Center(child: Lottie.asset("Calculator.json"),),);
  }
}
