import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName="home";
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text("Islami",style: TextStyle(color: Colors.black),),
          ),
        ),
      ],
    );
  }
}
