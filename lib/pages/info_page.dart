import 'package:flutter/material.dart';
import 'package:flutter_covid19_ui/constant.dart';
import 'package:flutter_covid19_ui/widgets/header_widget.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HeaderCovid(
            image: 'assets/icons/coronadr.svg',
            textTop: 'Get to know',
            textBottom: 'About Covid-19',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Case Update",
              style: kTitleTextstyle,
            ),
          ),
        ],
      ),
    );
  }
}
