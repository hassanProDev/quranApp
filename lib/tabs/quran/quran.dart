import 'package:flutter/material.dart';
import 'package:islami_app/customise_widget/custom_quran_title.dart';
import 'package:islami_app/reused_style/reused_style.dart';
import 'package:islami_app/tabs/quran/custom_sura_data.dart';
import 'package:islami_app/tabs/quran/sura_data.dart';
import 'package:islami_app/tabs/quran/sura_details.dart';

class QuranScreen extends StatefulWidget {
  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {

  @override
  Widget build(BuildContext context) {
   if(suraData.isEmpty){
     addSuraData();
   }

    print(suraData);
    return Scaffold(
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
                Expanded(
                  child: CustomTitle(
                    title: 'عدد الايات',
                    top: borderSideOfQuranScreen,
                    bottom: borderSideOfQuranScreen,
                    //
                  ),
                ),
                Expanded(
                  child: CustomTitle(
                    title: 'السورة',
                    top: borderSideOfQuranScreen,
                    bottom: borderSideOfQuranScreen,
                    left: borderSideOfQuranScreen,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: suraData.length,
                itemBuilder: (context, index) => CustomSuraData(
                  suraData: suraData[index],
                  func: () {
                    Navigator.pushNamed(
                      context,
                      SuraDetailsScreen.routeNAme,
                      arguments: SuraDetailsModel(
                          suraName: suraData[index].suraName, suraIndex: index),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
