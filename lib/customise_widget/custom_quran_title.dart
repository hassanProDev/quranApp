import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String? title;
  final BorderSide top;
  final BorderSide bottom;
  final BorderSide right;
  final BorderSide left;

  const CustomTitle(
      {Key? key,
      this.title,
      this.left = BorderSide.none,
      this.right = BorderSide.none,
      this.bottom = BorderSide.none,
      this.top = BorderSide.none})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '$title',
        style: Theme.of(context).textTheme.headline2,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: top,
          bottom: bottom,
          right: right,
          left: left,
        ),
      ),
    );
  }
}
