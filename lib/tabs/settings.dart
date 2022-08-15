import 'package:flutter/material.dart';
import 'package:islami_app/tabs/tasbeh/add_zekr.dart';
import 'package:islami_app/theming/my_them_mood.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = "settingScreen";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              'اللغة العربية',
              style: Theme.of(context).textTheme.headline2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 1, color: MyTheme.blackColor),
              color: MyTheme.whiteColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              'فاتح',
              style: Theme.of(context).textTheme.headline2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 1, color: MyTheme.blackColor),
              color: MyTheme.whiteColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all( 32.0),
          child: InkWell(
            onTap: (){
              Navigator.pushNamed(context, AddZekrScreen.routeName);
            },
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                'اضف ذكر',
                style: Theme.of(context).textTheme.headline2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1, color: MyTheme.blackColor),
                color: MyTheme.whiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
