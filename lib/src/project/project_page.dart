import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/src/project/widgets/large_screen_project.dart';
import 'package:portfolio/src/project/widgets/medium_screen_project.dart';
import 'package:portfolio/src/project/widgets/small_screen_project.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage>
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
              ? SmallScreenProject()
              : screenwidth <= 1000 && screenwidth >= 620
              ? MediumScreenProject()
              : LargeScreenProject(),
          // screenwidth < 580
          //     ? SmallScreenProject()
          //     : screenwidth < 1024
          //     ? MediumScreenProject()
          //     : LargeScreenProject(),
        ],
      ),
    );
  }
}
