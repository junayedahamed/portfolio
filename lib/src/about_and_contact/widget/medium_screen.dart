import 'package:flutter/material.dart';
import 'package:portfolio/src/about_and_contact/widget/about_card.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [AboutCard(), AboutCard()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [AboutCard()],
          ),
        ],
      ),
    );
  }
}
