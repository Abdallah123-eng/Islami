import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/ahadeth_tab.dart';
import 'package:islami_app/home/tabs/quran_tab.dart';
import 'package:islami_app/home/tabs/radio_tab.dart';
import 'package:islami_app/home/tabs/sebha_tab.dart';
import 'package:islami_app/home/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

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
            title: Text(
              "Islami",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: (index) {
              selectedindex = index;
              setState(() {});
            },

            iconSize: 30,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Color(0xffB7935F),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                  label: "Radio"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "Moshaf"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: Icon(Icons.settings),
                  label: "Setting"),
            ],
          ),

          body: tabs[selectedindex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    AhadethTab(),
    QuranTab(),
    SettingTab(),
  ];
}
