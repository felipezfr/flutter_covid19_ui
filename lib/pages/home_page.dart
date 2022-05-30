import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_covid19_ui/widgets/counter_widget.dart';
import 'package:flutter_covid19_ui/widgets/header_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_covid19_ui/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _dropdownValue = 'brasil';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderCovid(
              image: 'assets/icons/Drcorona.svg',
              textTop: 'All you need',
              textBottom: 'is stay home',
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: const Color(0xFFE5E5E5),
                  width: 2,
                ),
              ),
              child: Row(children: [
                SvgPicture.asset('assets/icons/maps-and-flags.svg'),
                const SizedBox(width: 15),
                Expanded(
                  child: DropdownButton(
                    value: _dropdownValue,
                    icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                    underline: const SizedBox(),
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(
                        value: "brasil",
                        child: Text(
                          "Brasil",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      DropdownMenuItem(
                        value: "indonesia",
                        child: Text(
                          "Indonesia",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        _dropdownValue = value!;
                      });
                    },
                  ),
                )
              ]),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Case Update",
                        style: kTitleTextstyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Newest update March 28',
                        style: TextStyle(color: kTextLightColor),
                      ),
                      Text(
                        'See details',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Counter(
                            title: "Infected",
                            count: 1048,
                            color: kInfectedColor),
                        Counter(
                          title: "Deaths",
                          count: 87,
                          color: kDeathColor,
                        ),
                        Counter(
                          title: "Recovered",
                          count: 46,
                          color: kRecovercolor,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Spread of virus",
                        style: kTitleTextstyle,
                      ),
                      Text(
                        'See details',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Image.asset('assets/images/map.png',
                        fit: BoxFit.contain),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
