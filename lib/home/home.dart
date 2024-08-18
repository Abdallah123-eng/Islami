import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/ahadeth_tab.dart';
import 'package:islami_app/home/tabs/quran_tab.dart';
import 'package:islami_app/home/tabs/radio_tab.dart';
import 'package:islami_app/home/tabs/sebha_tab.dart';
import 'package:islami_app/home/tabs/settings_tab.dart';
import 'package:islami_app/providers/My_Provider.dart';
import 'package:provider/provider.dart';

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
    var pro = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(pro.appTheme == ThemeMode.dark
            ? "assets/images/dark_bg.png"
            : "assets/images/main_bg.png"),
        Scaffold(
          appBar: AppBar(
            title: Text("islami".tr()),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: (index) {
              selectedindex = index;
              setState(() {});
            },
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                  // backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                  label: "radio"),
              BottomNavigationBarItem(
                  // backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                  label: "sebha"),
              BottomNavigationBarItem(
                  //backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  // backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "Moshaf"),
              BottomNavigationBarItem(
                  //backgroundColor: Color(0xffB7935F),
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
