import 'package:flutter/material.dart';
import 'package:islami_app/home_app.dart';
import 'package:islami_app/tabs/hadeth/hadeth_details.dart';
import 'package:islami_app/tabs/quran/sura_details.dart';
import 'package:islami_app/tabs/settings.dart';
import 'package:islami_app/tabs/tasbeh/add_zekr.dart';
import 'package:islami_app/theming/my_them_mood.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: MyHome.routeName,
      routes: {
        MyHome.routeName: (_) => MyHome(),
        SuraDetailsScreen.routeNAme: (_) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
        SettingsScreen.routeName: (_) => SettingsScreen(),
        AddZekrScreen.routeName: (_) => AddZekrScreen(),
      },
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
    );
  }
}
