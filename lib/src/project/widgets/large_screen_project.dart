import 'package:flutter/material.dart';
import 'package:portfolio/src/project/project_data/project_data.dart';
import 'package:portfolio/src/project/widgets/github_url_launch_button.dart';
import 'package:portfolio/src/project/widgets/project_card.dart';
import 'package:portfolio/src/project/widgets/tech_name_container_for_project.dart';
import 'package:portfolio/src/skills/widget/tech_item_image_path.dart';

class LargeScreenProject extends StatelessWidget {
  const LargeScreenProject({super.key});

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       //project card one
    //       ProjectCard(
    //         // width: 130,
    //         height: 370,
    //         image: ProjectData.projectImage[0],
    //         widget: Column(
    //           spacing: 30,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             Text(
    //               overflow: TextOverflow.ellipsis,
    //               ProjectData.projectName[0],
    //               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
    //             ),
    //             Text(
    //               textAlign: TextAlign.center,
    //               maxLines: 5,
    //               overflow: TextOverflow.ellipsis,
    //               ProjectData.projectDescription[0],
    //               style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
    //             ),

    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 TechNameContainerForProject(
    //                   icon: TechItemImagePath.techItemPath['Py'],
    //                   name: "Python",
    //                 ),

    //                 //git link of project
    //                 GithubUrlLaunchButton(uri: ProjectData.projectLink[0]),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //       SizedBox(width: 20),
    //       //Project card two
    //       ProjectCard(
    //         // width: 130,
    //         height: 370,
    //         image: ProjectData.projectImage[1],
    //         widget: Column(
    //           spacing: 30,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             Text(
    //               overflow: TextOverflow.ellipsis,
    //               ProjectData.projectName[1],
    //               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
    //             ),
    //             Text(
    //               textAlign: TextAlign.center,
    //               maxLines: 5,
    //               overflow: TextOverflow.ellipsis,
    //               ProjectData.projectDescription[1],
    //               style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 TechNameContainerForProject(
    //                   icon: TechItemImagePath.techItemPath['Flutter'],
    //                   name: "Flutter",
    //                 ),
    //                 TechNameContainerForProject(
    //                   icon: TechItemImagePath.techItemPath['Dart'],
    //                   name: "Dart",
    //                 ),

    //                 //git link of project
    //                 GithubUrlLaunchButton(uri: ProjectData.projectLink[1]),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //       SizedBox(width: 20),
    //       ProjectCard(
    //         // width: 130,
    //         height: 370,
    //         image: ProjectData.projectImage[2],
    //         widget: Column(
    //           spacing: 20,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             Text(
    //               overflow: TextOverflow.ellipsis,
    //               ProjectData.projectName[2],
    //               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
    //             ),
    //             Text(
    //               textAlign: TextAlign.center,
    //               maxLines: 5,
    //               overflow: TextOverflow.ellipsis,
    //               ProjectData.projectDescription[2],
    //               style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 TechNameContainerForProject(
    //                   icon: TechItemImagePath.techItemPath['Flutter'],
    //                   name: "Flutter",
    //                 ),
    //                 TechNameContainerForProject(
    //                   icon: TechItemImagePath.techItemPath['Dart'],
    //                   name: "Dart",
    //                 ),

    //                 //git link of project
    //                 GithubUrlLaunchButton(uri: ProjectData.projectLink[2]),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.9,
      ),
      itemCount: ProjectData.projectName.length,
      itemBuilder: (context, index) {
        return ProjectCard(
          // width: 130,
          height: 200,

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
        );
      },
    );
  }
}
