import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName="Islami";
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Islami"),
      ),
    );
  }
}
