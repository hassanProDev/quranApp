import 'package:flutter/material.dart';
import 'package:islami_app/app_data/sura_data.dart';

import '../reused_style/reused_style.dart';
import 'custom_quran_title.dart';

class CustomSuraData extends StatelessWidget {
  final SuraData? suraData;
  final VoidCallback? func;
  const CustomSuraData({Key? key,this.suraData,this.func}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        func!();
      },
      child: Row(
        children: [
          CustomQuranTitle(
            title: '${suraData!.ayatCount}',
            // right: borderSideOfQuranScreen,
          ),
          CustomQuranTitle(
            title: '${suraData!.suraName}',
            left: borderSideOfQuranScreen,
          ),
        ],
      ),
    );
  }
}
