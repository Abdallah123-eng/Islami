import 'package:flutter/material.dart';
import 'package:islami_app/Ahadeth_module.dart';

class AhadethDetailsScreen extends StatelessWidget {
  static const String routeName="AhadethScreen";
  const AhadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as AhadethModule;
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/main_bg.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(model.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            child: ListView.builder(itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(model.content[index],style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.right,),
              );
            },itemCount: model.content.length,),
          ),
        ),
      ),
    );
  }
}
