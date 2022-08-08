import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/tabs/quran/sura_data.dart';
import 'package:islami_app/theming/my_them_mood.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeNAme = 'suraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verse=[];

  @override
  Widget build(BuildContext context) {
    SuraDetailsModel suraDetailsModel = ModalRoute.of(context)!.settings.arguments as SuraDetailsModel;
    if(verse.isEmpty){
      loadFile(suraDetailsModel.suraIndex);
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
            padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 48),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              decoration: BoxDecoration(
                color: MyTheme.whiteColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Text(
                    '${suraDetailsModel.suraName}',
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
                      itemCount: verse.length,
                     itemBuilder: (_,index)=>   Text(
                       '${verse[0]}',
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
    );
  }

  void loadFile(index)async{
    String content=await rootBundle.loadString('assets/sura/${index+1}.txt');
    // content.split('\n');
    List<String> lines=[];
    lines.add(content);
    verse=lines;
    setState((){});
  }
}
