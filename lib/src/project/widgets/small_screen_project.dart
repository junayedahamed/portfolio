import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/src/project/project_data/project_data.dart';
import 'package:portfolio/src/project/widgets/project_card.dart';
import 'package:url_launcher/url_launcher.dart';

class SmallScreenProject extends StatelessWidget {
  const SmallScreenProject({super.key});

  @override
  Widget build(BuildContext context) {
    log(ProjectData.projectDescription.length.toString());
    return ListView(
      // children: [
      //   //about card one
      //   Padding(
      //     padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      //     child: AboutCard(
      //       // width: 130,
      //       // height: 350,
      //       image: AboutData.image,
      //       widget: Column(
      //         spacing: 30,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Text(
      //             overflow: TextOverflow.ellipsis,
      //             AboutData.myname,
      //             style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      //           ),
      //           Text(
      //             textAlign: TextAlign.center,
      //             maxLines: 5,
      //             overflow: TextOverflow.ellipsis,
      //             AboutData.aboutDescription,
      //             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //   SizedBox(width: 20),
      //   //about card two
      //   Padding(
      //     padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      //     child: AboutCard(
      //       // width: 130,
      //       // height: 300,
      //       image: AboutData.conimage,
      //       widget: Column(
      //         children: [
      //           SizedBox(height: 30),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Text(
      //                 "Contact".toUpperCase(),
      //                 overflow: TextOverflow.ellipsis,
      //                 style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.w400,
      //                 ),
      //               ),
      //               Text(
      //                 "Social".toUpperCase(),
      //                 overflow: TextOverflow.ellipsis,
      //                 style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.w400,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           SizedBox(height: 10),

      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               TextButton(
      //                 onPressed: () {},
      //                 child: Text(
      //                   overflow: TextOverflow.ellipsis,
      //                   "Email",
      //                   style: TextStyle(color: Colors.cyanAccent),
      //                 ),
      //               ),
      //               TextButton(
      //                 onPressed: () {},
      //                 child: Text(
      //                   overflow: TextOverflow.ellipsis,
      //                   "Github",
      //                   style: TextStyle(color: Colors.cyanAccent),
      //                 ),
      //               ),
      //             ],
      //           ),

      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Text("📍 Dhaka,BD", overflow: TextOverflow.ellipsis),
      //               TextButton(
      //                 onPressed: () {},
      //                 child: Text(
      //                   "LinkedIn",
      //                   overflow: TextOverflow.ellipsis,
      //                   style: TextStyle(color: Colors.cyanAccent),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Text("                     "),
      //               TextButton(
      //                 onPressed: () {},
      //                 child: Text(
      //                   "Facebook",
      //                   overflow: TextOverflow.ellipsis,
      //                   style: TextStyle(color: Colors.cyanAccent),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ],
      children: List.generate(ProjectData.projectName.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 13),
          child: ProjectCard(
            // width: 130,
            // height: 350,
            image: ProjectData.projectImage[index],
            widget: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  ProjectData.projectName[index],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text(
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  ProjectData.projectDescription[index],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                // SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () async {
                        final url = Uri.parse(ProjectData.projectLink[index]);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw "url couldn't launch";
                        }
                      },
                      icon: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          "image/github.png",
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
