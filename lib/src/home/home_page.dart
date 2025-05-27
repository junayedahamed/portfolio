import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/src/home/widgets/app_bar_action_buttons.dart';
import 'package:portfolio/src/texts_and_other_messages/name_and_description_txt.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Lottie.asset(
              "image/firework.json",
              // animate: true,
              controller: controller,
              onLoaded: (p0) {
                controller
                  ..duration = Duration(seconds: 5)
                  ..repeat();
              },
              repeat: true,
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                NameAndDescriptionTxt.name,
                style: TextStyle(
                  // color: Colors.black,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),
              Text(
                textAlign: TextAlign.center,
                NameAndDescriptionTxt.description,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),

              SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}
