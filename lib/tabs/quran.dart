import 'package:flutter/material.dart';
import 'package:islami_app/customise_widget/custom_quran_title.dart';
import 'package:islami_app/reused_style/reused_style.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/quranimag.png',
              width: 205,
              height: 227,
            ),
            Row(
              children: [
                CustomQuranTitle(
                  title: 'عدد الايات',
                  top: borderSideOfQuranScreen,
                  bottom: borderSideOfQuranScreen,
                  right: borderSideOfQuranScreen,
                ),
                CustomQuranTitle(
                  title: 'اسم الصورة',
                  top: borderSideOfQuranScreen,
                  bottom: borderSideOfQuranScreen,
                  left: borderSideOfQuranScreen,
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomQuranTitle(
                        title: 'عدد الايات',
                        right: borderSideOfQuranScreen,
                      ),
                      CustomQuranTitle(
                        title: 'اسم الصورة',
                        left: borderSideOfQuranScreen,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
