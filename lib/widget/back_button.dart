import 'package:flutter/material.dart';
import 'package:flutter_submission_dart/style/light_colors.dart';

class MyBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'backButton',
        child: GestureDetector(
          child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: LightColors.kDarkBlue,
                ),
              )),
        ));
  }
}
