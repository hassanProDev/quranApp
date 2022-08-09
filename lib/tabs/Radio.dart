import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 64.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/radioimg.png'),
            Text(
              'اذاعة القران الكريم',
              style: Theme.of(context).textTheme.headline2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/Icon metro-next.png'),
                Image.asset('assets/images/Icon awesome-play.png'),
                Image.asset('assets/images/Icon metro-previos.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
