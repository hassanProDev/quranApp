import 'package:flutter/material.dart';
import 'package:islami_app/customise_widget/custom_quran_title.dart';
import 'package:islami_app/reused_style/reused_style.dart';

class MyHome extends StatefulWidget {
  static const String routeName = 'myHomePage';

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentIndex = 0;

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
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/quranimag.png',
                  width: 205,
                  height: 227,
                ),
                Row(
                  children: [
                    CustomQuranTitle(
                      title: 'عدد الايات',
                      top: borderSideOfQuranScreen,
                      bottom: borderSideOfQuranScreen,
                      right: borderSideOfQuranScreen,
                    ),
                    CustomQuranTitle(
                      title: 'اسم الصورة',
                      top: borderSideOfQuranScreen,
                      bottom: borderSideOfQuranScreen,
                      left: borderSideOfQuranScreen,
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomQuranTitle(
                            title: 'عدد الايات',
                            right: borderSideOfQuranScreen,
                          ),
                          CustomQuranTitle(
                            title: 'اسم الصورة',
                            left: borderSideOfQuranScreen,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
