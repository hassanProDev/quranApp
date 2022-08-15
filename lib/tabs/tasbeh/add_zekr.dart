import 'package:flutter/material.dart';
import 'package:islami_app/app_data/sebha_data.dart';
import 'package:islami_app/theming/my_them_mood.dart';

class AddZekrScreen extends StatefulWidget {
  static const String routeName = 'addZekrScreen';

  @override
  State<AddZekrScreen> createState() => _AddZekrScreenState();
}

class _AddZekrScreenState extends State<AddZekrScreen> {
  String newZekr = '';
  TextEditingController txt=TextEditingController();
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 64.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        onChanged: (value) {
                          newZekr = value;
                        },controller: txt,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'اضف ذكر',
                          hintStyle: Theme.of(context).textTheme.headline2,
                          suffixStyle: Theme.of(context).textTheme.headline2,
                          contentPadding: EdgeInsets.zero,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: () {
                          zekr.add(newZekr);
                          txt.text='';
                          setState((){});
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'اضافة الذكر',
                            style: Theme.of(context).textTheme.headline2?.copyWith(
                              color: MyTheme.whiteColor,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: MyTheme.primaryColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: zekr.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        padding: EdgeInsets.all(16),
                        child: Text('${zekr[i]}'),
                        decoration: BoxDecoration(
                          color: MyTheme.whiteColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
