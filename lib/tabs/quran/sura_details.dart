import 'package:flutter/material.dart';
import 'package:islami_app/theming/my_them_mood.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = 'suraDetails';

  @override
  Widget build(BuildContext context) {
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
                child: ListView.builder(
                  itemCount: 0,
                    itemBuilder: (context, index) => Container()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
