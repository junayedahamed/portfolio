import 'package:flutter/material.dart';
import 'package:portfolio/src/project/project_data/project_data.dart';
import 'package:portfolio/src/project/widgets/github_url_launch_button.dart';
import 'package:portfolio/src/project/widgets/project_card.dart';
import 'package:portfolio/src/project/widgets/tech_name_container_for_project.dart';
import 'package:portfolio/src/skills/widget/tech_item_image_path.dart';

class MediumScreenProject extends StatelessWidget {
  const MediumScreenProject({super.key});

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           //project card one
    //           ProjectCard(
    //             // width: 130,
    //             height: 370,
    //             image: ProjectData.projectImage[0],
    //             widget: Column(
    //               spacing: 30,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   overflow: TextOverflow.ellipsis,
    //                   ProjectData.projectName[0],
    //                   style: TextStyle(
    //                     fontSize: 25,
    //                     fontWeight: FontWeight.w700,
    //                   ),
    //                 ),
    //                 Text(
    //                   textAlign: TextAlign.center,
    //                   maxLines: 5,
    //                   overflow: TextOverflow.ellipsis,
    //                   ProjectData.projectDescription[0],
    //                   style: TextStyle(
    //                     fontSize: 15,
    //                     fontWeight: FontWeight.w400,
    //                   ),
    //                 ),

    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   children: [
    //                     //language and framework used to made
    //                     // Container(
    //                     //   height: 30,
    //                     //   width: 80,
    //                     //   decoration: BoxDecoration(
    //                     //     color: Colors.transparent,
    //                     //     borderRadius: BorderRadius.circular(20),
    //                     //   ),
    //                     //   child: Center(
    //                     //     child: Row(
    //                     //       spacing: 4,
    //                     //       children: [
    //                     //         Image.asset(
    //                     //         ,
    //                     //           height: 15,
    //                     //           width: 15,
    //                     //         ),
    //                     //         Text(
    //                     //           "Python",
    //                     //           style: TextStyle(
    //                     //             fontSize: 13,
    //                     //             fontWeight: FontWeight.w400,
    //                     //           ),
    //                     //         ),
    //                     //       ],
    //                     //     ),
    //                     //   ),
    //                     // ),
    //                     TechNameContainerForProject(
    //                       icon: TechItemImagePath.techItemPath['Py'],
    //                       name: "Python",
    //                     ),

    //                     //git link of project
    //                     GithubUrlLaunchButton(uri: ProjectData.projectLink[0]),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(width: 15),
    //           //project card two
    //           ProjectCard(
    //             // width: 130,
    //             height: 370,
    //             image: ProjectData.projectImage[1],
    //             widget: Column(
    //               spacing: 30,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   overflow: TextOverflow.ellipsis,
    //                   ProjectData.projectName[1],
    //                   style: TextStyle(
    //                     fontSize: 25,
    //                     fontWeight: FontWeight.w700,
    //                   ),
    //                 ),
    //                 Text(
    //                   textAlign: TextAlign.center,
    //                   maxLines: 5,
    //                   overflow: TextOverflow.ellipsis,
    //                   ProjectData.projectDescription[1],
    //                   style: TextStyle(
    //                     fontSize: 15,
    //                     fontWeight: FontWeight.w400,
    //                   ),
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   children: [
    //                     //framework and lamguage
    //                     TechNameContainerForProject(
    //                       icon: TechItemImagePath.techItemPath['Flutter'],
    //                       name: "Flutter",
    //                     ),
    //                     TechNameContainerForProject(
    //                       icon: TechItemImagePath.techItemPath['Dart'],
    //                       name: "Dart",
    //                     ),
    //                     GithubUrlLaunchButton(uri: ProjectData.projectLink[1]),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //       //project card three if have more then add
    //       // Row(
    //       //   mainAxisAlignment: MainAxisAlignment.center,
    //       //   children: [],
    //       // ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           //project card three if have more then add
    //           ProjectCard(
    //             // width: 130,
    //             height: 370,
    //             image: ProjectData.projectImage[2],
    //             widget: Column(
    //               spacing: 20,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   overflow: TextOverflow.ellipsis,
    //                   ProjectData.projectName[2],
    //                   style: TextStyle(
    //                     fontSize: 25,
    //                     fontWeight: FontWeight.w700,
    //                   ),
    //                 ),
    //                 Text(
    //                   textAlign: TextAlign.center,
    //                   maxLines: 5,
    //                   overflow: TextOverflow.ellipsis,
    //                   ProjectData.projectDescription[2],
    //                   style: TextStyle(
    //                     fontSize: 15,
    //                     fontWeight: FontWeight.w400,
    //                   ),
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   children: [
    // //framework and lamguage
    // TechNameContainerForProject(
    //   icon: TechItemImagePath.techItemPath['Flutter'],
    //   name: "Flutter",
    // ),
    // TechNameContainerForProject(
    //   icon: TechItemImagePath.techItemPath['Dart'],
    //   name: "Dart",
    // ),
    //                     //add frame work and lang name
    //                     GithubUrlLaunchButton(uri: ProjectData.projectLink[2]),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //           //project card four if have more then add
    //           ProjectCard(
    //             // width: 130,
    //             height: 370,
    //             image: ProjectData.projectImage[3],
    //             widget: Column(
    //               spacing: 20,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   overflow: TextOverflow.ellipsis,
    //                   ProjectData.projectName[3],
    //                   style: TextStyle(
    //                     fontSize: 25,
    //                     fontWeight: FontWeight.w700,
    //                   ),
    //                 ),
    //                 Text(
    //                   textAlign: TextAlign.center,
    //                   maxLines: 5,
    //                   overflow: TextOverflow.ellipsis,
    //                   ProjectData.projectDescription[3],
    //                   style: TextStyle(
    //                     fontSize: 15,
    //                     fontWeight: FontWeight.w400,
    //                   ),
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   children: [
    //                     //framework and lamguage
    //                     TechNameContainerForProject(
    //                       icon: TechItemImagePath.techItemPath['Flutter'],
    //                       name: "Flutter",
    //                     ),
    //                     TechNameContainerForProject(
    //                       icon: TechItemImagePath.techItemPath['Dart'],
    //                       name: "Dart",
    //                     ),
    //                     //add frame work and lang name
    //                     GithubUrlLaunchButton(uri: ProjectData.projectLink[3]),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      itemCount: ProjectData.projectName.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProjectCard(
            // width: 130,
            // height: 370,
            image: ProjectData.projectImage[index],
            widget: Column(
              spacing: 30,
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //language and framework used to made
                    // Container(
                    //   height: 30,
                    //   width: 80,
                    //   decoration: BoxDecoration(
                    //     color: Colors.transparent,
                    //     borderRadius: BorderRadius.circular(20),
                    //   ),
                    //   child: Center(
                    //     child: Row(
                    //       spacing: 4,
                    //       children: [
                    //         Image.asset(
                    //         ,
                    //           height: 15,
                    //           width: 15,
                    //         ),
                    //         Text(
                    //           "Python",
                    //           style: TextStyle(
                    //             fontSize: 13,
                    //             fontWeight: FontWeight.w400,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    index == 0
                        ? TechNameContainerForProject(
                            icon: TechItemImagePath.techItemPath['Py'],
                            name: "Python",
                          )
                        : //framework and lamguage
                          Row(
                            children: [
                              TechNameContainerForProject(
                                icon: TechItemImagePath.techItemPath['Flutter'],
                                name: "Flutter",
                              ),
                              TechNameContainerForProject(
                                icon: TechItemImagePath.techItemPath['Dart'],
                                name: "Dart",
                              ),
                            ],
                          ),

                    //git link of project
                    GithubUrlLaunchButton(uri: ProjectData.projectLink[index]),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
