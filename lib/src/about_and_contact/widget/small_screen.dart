import 'package:flutter/material.dart';
import 'package:portfolio/src/about_and_contact/widget/about_card.dart';

class SmallScreenAbout extends StatelessWidget {
  const SmallScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [AboutCard(), AboutCard(), AboutCard()]);
  }
}
