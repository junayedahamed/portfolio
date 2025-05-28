import 'package:flutter/material.dart';
import 'package:portfolio/src/about_and_contact/widget/about_card.dart';

class LargeScreenAbout extends StatelessWidget {
  const LargeScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [AboutCard(), AboutCard(), AboutCard()],
      ),
    );
  }
}
