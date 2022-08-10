import 'package:flutter/material.dart';
import 'package:islami_app/tabs/hadeth/hadeth_data.dart';

import '../../theming/my_them_mood.dart';

class HadethDetailsScreen extends StatelessWidget {
static const String routeName='hadethDetailsScreen';
  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel = HadethModel();
    if(hadethModel.content==null && hadethModel.title==null){
      hadethModel=ModalRoute.of(context)?.settings.arguments as HadethModel;
    }
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 48),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              decoration: BoxDecoration(
                color: MyTheme.whiteColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Text(
                    '${hadethModel.title}',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 64.0,vertical: 16),
                    child: Container(
                      height: 3,
                      color: MyTheme.primaryColor,
                      // padding: EdgeInsets.symmetric(horizontal: 50),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: hadethModel.content?.length,
                      itemBuilder: (_,index)=>   Text(
                        '${hadethModel.content?[index]}',
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );;
  }
}
