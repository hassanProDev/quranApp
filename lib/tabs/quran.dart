import 'package:flutter/material.dart';
import 'package:islami_app/app_data/sura_data.dart';
import 'package:islami_app/customise_widget/custom_quran_title.dart';
import 'package:islami_app/customise_widget/custom_sura_data.dart';
import 'package:islami_app/reused_style/reused_style.dart';
import 'package:islami_app/screens/sura_details.dart';

class QuranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    addSuraData();
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
                CustomQuranTitle(
                  title: 'عدد الايات',
                  top: borderSideOfQuranScreen,
                  bottom: borderSideOfQuranScreen,
                  //
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
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: suraData.length,
                itemBuilder: (context, index) => CustomSuraData(
                  suraData: suraData[index],
                  func: () {
                    loadSurafile(index);
                    Navigator.pushNamed(
                      context,
                      SuraDetailsScreen.routeNAme,
                      arguments: SuraData(suraName: suraData[index].suraName),
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
