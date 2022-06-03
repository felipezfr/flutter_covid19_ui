import 'package:flutter/material.dart';
import 'package:flutter_covid19_ui/pages/info_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_covid19_ui/constant.dart';
import 'package:flutter_covid19_ui/widgets/counter_widget.dart';

class HeaderCovid extends StatelessWidget {
  final String image;
  final double offset;
  final String textTop;
  final String textBottom;
  const HeaderCovid({
    Key? key,
    required this.image,
    required this.offset,
    required this.textTop,
    required this.textBottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: const EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 300,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF3383CD),
            Color(0xFF11249F),
          ]),
          image: DecorationImage(
            image: AssetImage('assets/images/virus.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const InfoPage();
                    },
                  ),
                );
              },
              child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset('assets/icons/menu.svg'),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: (offset < 0) ? 0 : offset,
                    child: SvgPicture.asset(
                      image,
                      width: 230,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Positioned(
                    top: 20 - offset / 2,
                    left: 150,
                    child: Text(
                      "$textTop \n$textBottom",
                      style: kHeadingTextStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(), // I dont know why it can't work without container
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
