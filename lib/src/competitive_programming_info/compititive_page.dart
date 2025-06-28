import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/src/competitive_programming_info/data/comp_data.dart';
import 'package:portfolio/src/competitive_programming_info/widget/competeive_card.dart';

class CompititivePage extends StatefulWidget {
  const CompititivePage({super.key});

  @override
  State<CompititivePage> createState() => _CompititivePageState();
}

class _CompititivePageState extends State<CompititivePage>
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

          // screenwidth <= 625
          //     ? SmallScreenProject()
          //     : screenwidth <= 1000 && screenwidth >= 620
          //     ? MediumScreenProject()
          //     : LargeScreenProject(),
          // // screenwidth < 580
          // //     ? SmallScreenProject()
          // //     : screenwidth < 1024
          // //     ? MediumScreenProject()
          // //     : LargeScreenProject(),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: screenwidth <= 625
                  ? 1
                  : screenwidth <= 1000 && screenwidth >= 620
                  ? 2
                  : 3,
              crossAxisSpacing: 5,
              childAspectRatio: screenwidth <= 625
                  ? 1.2
                  : screenwidth <= 1000 && screenwidth >= 620
                  ? 0.9
                  : 1,
            ),
            itemCount: CompData.img.length,
            itemBuilder: (context, index) {
              return CompeteiveCard(
                solved: CompData.solvedProblem[index],
                image: CompData.img[index],
                url: CompData.websiteName.values.toList()[index],
                platformplatformName: CompData.websiteName.keys.toList()[index],
                ratting: index == 2 ? CompData.ratting : null,
              );
            },
          ),
        ],
      ),
    );
  }
}
