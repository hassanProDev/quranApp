import 'package:flutter/material.dart';
import 'package:islami_app/tabs/quran/sura_data.dart';

import '../../customise_widget/custom_quran_title.dart';
import '../../reused_style/reused_style.dart';

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
          Expanded(
            child: CustomTitle(
              title: '${suraData!.ayatCount}',
              // right: borderSideOfQuranScreen,
            ),
          ),
          
          Expanded(
            child: CustomTitle(
              title: '${suraData!.suraName}',
              left: borderSideOfQuranScreen,
            ),
          ),
        ],
      ),
    );
  }
}
