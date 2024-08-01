import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Sura_module.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetails";
  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSurafile(model.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/main_bg.png")),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(size: 30, color: Colors.black),
          title: Text(
            model.name,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          child: Card(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(verses[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,);
              },
              itemCount: verses.length,
            ),
          ),
        ),
      ),
    );
  }

  loadSurafile(int index) async {
    String Sura = await rootBundle.loadString("assets/files/${index + 1}.txt");

    List<String> SuraLines = Sura.split("\n");
    verses = SuraLines;
    setState(() {});
  }
}
