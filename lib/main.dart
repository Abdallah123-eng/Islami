
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/SuraDetailsScreen.dart';
import 'package:islami_app/ahadeth_details_screen.dart';
import 'package:islami_app/home/home.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/My_Provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => MyProvider()),
      // ChangeNotifierProvider(create: (context)=> SuraDetailsProvider()),
    ],
     child: EasyLocalization(
         supportedLocales: [Locale('en'), Locale('ar')],
         path:
         'assets/translations',
         saveLocale: true,// <-- change the path of the translation files
         startLocale: Locale("en"),
         child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      themeMode: pro.appTheme,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        AhadethDetailsScreen.routeName: (context) => AhadethDetailsScreen(),
      },
    );
  }
}
