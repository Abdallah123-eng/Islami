import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Ahadeth_module.dart';

class AhadethDetailsProvider extends ChangeNotifier{
  List<AhadethModule> allAhadeth = [];

  Loadahadethfile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String ahadethone = ahadeth[i];
        List<String> AhadethLines = ahadethone.trim().split("\n");
        String title = AhadethLines[0];
        AhadethLines.removeAt(0);
        List<String> Content = AhadethLines;

        AhadethModule ahadethModule = AhadethModule(title, Content);

        allAhadeth.add(ahadethModule);
       notifyListeners();
      }
    });
  }
}