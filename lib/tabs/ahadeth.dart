import 'package:flutter/material.dart';
import 'package:islami_app/theming/my_them_mood.dart';

class AhadethScreen extends StatelessWidget {
  const AhadethScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              itemCount: 0,
              itemBuilder: (context, index) => Container(),
            ),
          ),
        ],
      ),
    );
  }
}
