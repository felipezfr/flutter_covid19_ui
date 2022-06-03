import 'package:flutter/material.dart';
import 'package:flutter_covid19_ui/constant.dart';
import 'package:flutter_covid19_ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19 UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: const TextTheme(bodyText1: TextStyle(color: kBodyTextColor)),
      ),
      home: const HomePage(),
    );
  }
}
