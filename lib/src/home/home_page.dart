import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/src/cv_download/cv_download_buton.dart';
import 'package:portfolio/src/home/widgets/app_bar_action_buttons.dart';
import 'package:portfolio/src/home/widgets/button_names.dart';
import 'package:portfolio/src/home/widgets/my_drawer.dart';
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

  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // void _openEndDrawer() {
  //   _scaffoldKey.currentState!.openEndDrawer();
  // }

  // void _closeEndDrawer() {
  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheighgt = MediaQuery.of(context).size.height;
    // print(screenwidth);

    return Scaffold(
      // key: _scaffoldKey,
      // backgroundColor: Colors.black,
      endDrawer: screenwidth <= 560 ? MyDrawer() : null,

      appBar: screenwidth >= 561
          ? AppBar(
              actions: [
                AppBarActionButtons(
                  ontap: () {},

                  fisrtText: ButtonNames.btn1,
                  secText: ButtonNames.btn1sub,
                ),
                SizedBox(width: 25),
                AppBarActionButtons(
                  ontap: () {},

                  fisrtText: ButtonNames.btn2,
                  secText: ButtonNames.btn2sub,
                ),
                SizedBox(width: 30),
                AppBarActionButtons(
                  ontap: () {},

                  fisrtText: ButtonNames.btn3,
                  secText: ButtonNames.btn3sub,
                ),
                SizedBox(width: 30),
                AppBarActionButtons(
                  ontap: () {},

                  fisrtText: ButtonNames.btn4,
                  secText: ButtonNames.btn4sub,
                ),
                SizedBox(width: 25),
              ],
            )
          : AppBar(),
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

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedTextKit(
                // controller: ,
                repeatForever: false,
                totalRepeatCount: 1,

                animatedTexts: [
                  TyperAnimatedText(
                    NameAndDescriptionTxt.name,
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                      // color: Colors.black,
                      fontSize: screenwidth <= 560 ? 30 : 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                // child: Text(
                //   textAlign: TextAlign.center,
                //   NameAndDescriptionTxt.name,
                //   style: TextStyle(
                //     // color: Colors.black,
                //     fontSize: 45,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),

              SizedBox(height: 15),
              Text(
                textAlign: TextAlign.center,
                NameAndDescriptionTxt.description,
                style: TextStyle(
                  fontSize: screenwidth <= 560 ? 18 : 25,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 35),
              CvDownloadButon(ontap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
