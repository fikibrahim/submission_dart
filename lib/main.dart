import 'package:flutter/material.dart';
import 'package:flutter_submission_dart/screens/home_page.dart';
import 'package:flutter_submission_dart/style/light_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: LightColors.kLightYellow,
          appBarTheme: AppBarTheme(elevation: 0),
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: LightColors.kBlue,
              displayColor: LightColors.kBlue,
              fontFamily: 'Poppins')),
      home: HomePage(),
    );
  }
}
