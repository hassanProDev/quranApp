import 'package:flutter/material.dart';
import 'package:islami_app/replacing_tabs/replacing_tabs.dart';
import 'package:islami_app/theming/my_them_mood.dart';

class MyHome extends StatefulWidget {
  static const String routeName = 'myHomePage';

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Image.asset(
          'assets/mainbg.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'اسلامي',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: tabs[currentIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              currentIndex: currentIndex,
              selectedItemColor: MyTheme.blackColor,
              unselectedItemColor: MyTheme.whiteColor,
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'radio',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: 'sebha',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                  label: 'ahadeth',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: 'quran',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'setting',
                ),

              ],
            ),
          ),
        ),
      ]),
    );
  }
}
