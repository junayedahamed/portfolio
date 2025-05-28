import 'package:flutter/material.dart';
import 'package:portfolio/src/project/project_data/project_data.dart';
import 'package:portfolio/src/project/widgets/project_card.dart';
import 'package:url_launcher/url_launcher.dart';

class MediumScreenProject extends StatelessWidget {
  const MediumScreenProject({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //About card one
              ProjectCard(
                // width: 130,
                height: 370,
                image: ProjectData.projectImage[0],
                widget: Column(
                  spacing: 30,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      ProjectData.projectName[0],
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      ProjectData.projectDescription[0],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () async {
                            final url = Uri.parse(ProjectData.projectLink[0]);
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
              SizedBox(width: 15),
              //about card two
              ProjectCard(
                // width: 130,
                height: 370,
                image: ProjectData.projectImage[1],
                widget: Column(
                  spacing: 30,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      ProjectData.projectName[1],
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      ProjectData.projectDescription[1],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () async {
                            final url = Uri.parse(ProjectData.projectLink[1]);
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
            ],
          ),
          //card three if have more then add
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [],
          // ),
          ProjectCard(
            // width: 130,
            height: 370,
            image: ProjectData.projectImage[2],
            widget: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  ProjectData.projectName[2],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text(
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  ProjectData.projectDescription[2],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () async {
                        final url = Uri.parse(ProjectData.projectLink[2]);
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
        ],
      ),
    );
  }
}
