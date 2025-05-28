import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/src/about_and_contact/widget/large_screen.dart';
import 'package:portfolio/src/about_and_contact/widget/medium_screen.dart';
import 'package:portfolio/src/about_and_contact/widget/small_screen.dart';

class AboutAndContact extends StatefulWidget {
  const AboutAndContact({super.key});

  @override
  State<AboutAndContact> createState() => _AboutAndContactState();
}

class _AboutAndContactState extends State<AboutAndContact>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 6),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheighgt = MediaQuery.of(context).size.height;
    // log("height: ${screenheighgt.toString()}");
    // log("width: ${screenwidth.toString()}");
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Lottie.asset(
              "image/firework.json",

              height: screenheighgt,
              width: screenheighgt,
              // fit: BoxFit.cover,
              // animate: true,
              controller: controller,
              onLoaded: (p0) {
                controller
                  ..duration = Duration(seconds: 4)
                  ..repeat();
              },
              repeat: true,
            ),
          ),
          screenwidth <= 625
              ? SmallScreenAbout()
              : screenwidth <= 850 && screenwidth >= 626
              ? MediumScreen()
              : LargeScreenAbout(),
        ],
      ),
    );
  }
}
