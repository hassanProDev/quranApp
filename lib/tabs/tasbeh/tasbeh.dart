import 'package:flutter/material.dart';
import 'package:islami_app/theming/my_them_mood.dart';

import '../../app_data/sebha_data.dart';

class TasbehScreen extends StatefulWidget {
  @override
  State<TasbehScreen> createState() => _TasbehScreenState();
}

class _TasbehScreenState extends State<TasbehScreen> {
  int sebhaCounter = 0;

  int zekrIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (){
              sebhaCounter++;
              if(sebhaCounter==34){
                sebhaCounter=0;
                zekrIndex++;
                if(zekrIndex==zekr.length){
                  zekrIndex=0;
                }
              }
              setState((){});
            },
            child: Image.asset(
              'assets/images/sebhaImage.png',
            ),
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headline2,
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.04),
            child: Text(
              '$sebhaCounter',
              style: Theme.of(context).textTheme.headline2,
            ),
            decoration: BoxDecoration(
              color: Color(0xffB7935F),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
            child: Text(
              '${zekr[zekrIndex]}',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: MyTheme.whiteColor,
                  ),
            ),
            decoration: BoxDecoration(
                color: MyTheme.primaryColor,
                borderRadius: BorderRadius.circular(25)),
          ),
        ],
      ),
    );
  }
}
