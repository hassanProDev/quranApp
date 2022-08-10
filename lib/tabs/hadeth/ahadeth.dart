import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/customise_widget/custom_quran_title.dart';
import 'package:islami_app/tabs/hadeth/hadeth_details.dart';
import 'package:islami_app/theming/my_them_mood.dart';

import 'hadeth_data.dart';

class AhadethScreen extends StatefulWidget {
  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
  List<HadethModel> hadethModel = [];

  @override
  Widget build(BuildContext context) {
    if (hadethModel.isEmpty) {
      loadHadeth();
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Image.asset('assets/images/ahadethImage.png'),
          Container(
            height: 3,
            padding: EdgeInsets.symmetric(horizontal: 32),
            color: MyTheme.primaryColor,
          ),
          Text(
            'الاحاديث',
            style: Theme.of(context).textTheme.headline1,
          ),
          Container(
            height: 3,
            padding: EdgeInsets.symmetric(horizontal: 32),
            color: MyTheme.primaryColor,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: hadethModel.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HadethDetailsScreen.routeName,
                    arguments: HadethModel(
                      title: hadethModel[index].title,
                      content: hadethModel[index].content,
                    ),
                  );
                },
                child: CustomTitle(
                  title: hadethModel[index].title,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void loadHadeth() async {
    String content = await rootBundle.loadString('assets/sura/ahadeth.txt');
    List<String> ahadeth = content.split('#\r\n');

    for (int i = 0; i < ahadeth.length; i++) {
      String allHadeth = ahadeth[i];
      List<String> lines = allHadeth.split('\n');
      String title = lines[0];
      lines.removeAt(0);
      hadethModel.add(HadethModel(title: title, content: lines));
    }
    setState(() {});
  }
}
