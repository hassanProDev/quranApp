import 'package:flutter/material.dart';
import 'package:islami_app/app_data/sura_data.dart';
import 'package:islami_app/theming/my_them_mood.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeNAme = 'suraDetailsScreen';
  String sura =
      'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم ِالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ الرَّحْمَنِ الرَّحِيمِ مَالِكِ يَوْمِ الدِّينِ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين';

  @override
  Widget build(BuildContext context) {
    SuraData suraData = ModalRoute.of(context)!.settings.arguments as SuraData;
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
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 48),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    child: ListView(
                      children: [
                        Text(
                          '${suraData.suraName}',
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 64.0),
                          child: Container(
                            height: 3,
                            color: MyTheme.primaryColor,
                            // padding: EdgeInsets.symmetric(horizontal: 50),
                          ),
                        ),
                        Text(
                          '$sura',
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: MyTheme.whiteColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
