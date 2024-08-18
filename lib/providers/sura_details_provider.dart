import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier {
  List<String> verses = [];
  loadSurafile(int index) async {
    String Sura = await rootBundle.loadString("assets/files/${index + 1}.txt");

    List<String> SuraLines = Sura.split("\n");
    verses = SuraLines;

    notifyListeners();
  }
}
