import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  static const String routeName = 'myHomePage';

  @override
  Widget build(BuildContext context) {
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
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'اسلامي',
              style: TextStyle(
                  color: Color(0xff242424),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            centerTitle: true,
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/quranimag.png',width: 205,height: 227,),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
