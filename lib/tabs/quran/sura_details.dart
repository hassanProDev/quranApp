import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/theming/my_them_mood.dart';

import 'sura_data.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'suraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> lines = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailData suraDetailData =
        ModalRoute.of(context)?.settings.arguments as SuraDetailData;
    loadFile(suraDetailData.suraIndex);
    return SafeArea(
      child: Stack(
        children: [
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 64),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                decoration: BoxDecoration(
                  color: MyTheme.whiteColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Text(
                      '${suraDetailData.suraName}',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 64.0, vertical: 16),
                      child: Container(
                        height: 3,
                        decoration: BoxDecoration(
                          color: MyTheme.primaryColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: lines.length,
                        itemBuilder: (context, index) => Text(
                          '$lines',
                          style: Theme.of(context).textTheme.headline2,textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void loadFile(index) async {
    String content = await rootBundle.loadString('assets/sura/${index + 1}.txt');
    content.split('\n');
    lines.add(content);
    print(lines);
    setState(() {});
  }
}

