import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Sura_module.dart';
import 'package:islami_app/providers/sura_details_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "SuraDetails";
  SuraDetailsScreen({super.key});


  @override
  Widget build(BuildContext context) {

    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;

    return ChangeNotifierProvider(
      create: (context)=> SuraDetailsProvider()..loadSurafile(model.index),
      builder: (context,child){
        var pro=Provider.of<SuraDetailsProvider>(context);
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/main_bg.png")),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text(model.name,),
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
                    return Text(pro.verses[index],style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,);
                  },
                  itemCount: pro.verses.length,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
