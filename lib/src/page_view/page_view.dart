import 'package:flutter/material.dart';
import 'package:portfolio/src/about_and_contact/about_and_contact.dart';
import 'package:portfolio/src/experience/experience_page.dart';
import 'package:portfolio/src/home/home_page.dart';
import 'package:portfolio/src/home/widgets/app_bar_action_buttons.dart';
import 'package:portfolio/src/home/widgets/button_names.dart';
import 'package:portfolio/src/home/widgets/my_drawer.dart';
import 'package:portfolio/src/project/project_page.dart';
import 'package:portfolio/src/skills/skill_page.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final pages = [
    HomePage(),
    AboutAndContact(),
    SkillPage(),
    ExperiencePage(),
    ProjectPage(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    // double screenheighgt = MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: screenwidth <= 560
          ? MyDrawer(
              widget: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                spacing: 15,
                children: [
                  SizedBox(height: 25),
                  AppBarActionButtons(
                    ontap: () {
                      setState(() {
                        index = 0;
                      });
                      Navigator.of(context).pop();
                    },

                    fisrtText: "Home",
                    secText: "Home",
                  ),
                  AppBarActionButtons(
                    ontap: () {
                      setState(() {
                        index = 1;
                      });
                      Navigator.of(context).pop();
                    },

                    fisrtText: ButtonNames.btn1,
                    secText: ButtonNames.btn1sub,
                  ),
                  SizedBox(width: 15),
                  AppBarActionButtons(
                    ontap: () {
                      setState(() {
                        index = 2;
                      });
                      Navigator.of(context).pop();
                    },

                    fisrtText: ButtonNames.btn2,
                    secText: ButtonNames.btn2sub,
                  ),
                  SizedBox(width: 15),
                  AppBarActionButtons(
                    ontap: () {
                      setState(() {
                        index = 3;
                      });
                      Navigator.of(context).pop();
                    },

                    fisrtText: ButtonNames.btn3,
                    secText: ButtonNames.btn3sub,
                  ),
                  SizedBox(width: 15),
                  AppBarActionButtons(
                    ontap: () {
                      setState(() {
                        index = 4;
                      });
                      Navigator.of(context).pop();
                    },

                    fisrtText: ButtonNames.btn4,
                    secText: ButtonNames.btn4sub,
                  ),
                ],
              ),
            )
          : null,

      appBar: screenwidth >= 561
          ? AppBar(
              automaticallyImplyLeading: false,
              title: index != 0
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back, size: 20),
                          SizedBox(width: 5),
                          Text(
                            "Back to home",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  : null,
              actions: [
                AppBarActionButtons(
                  ontap: () {
                    // context.go('/about/bio');
                    setState(() {
                      index = 1;
                    });
                  },

                  fisrtText: ButtonNames.btn1,
                  secText: ButtonNames.btn1sub,
                ),
                SizedBox(width: 25),
                AppBarActionButtons(
                  ontap: () {
                    // context.go('/experties/skill');
                    setState(() {
                      setState(() {
                        index = 2;
                      });
                    });
                  },

                  fisrtText: ButtonNames.btn2,
                  secText: ButtonNames.btn2sub,
                ),
                SizedBox(width: 30),
                AppBarActionButtons(
                  ontap: () {
                    // context.go('/experience/jobs');
                    setState(() {
                      index = 3;
                    });
                  },

                  fisrtText: ButtonNames.btn3,
                  secText: ButtonNames.btn3sub,
                ),
                SizedBox(width: 30),
                AppBarActionButtons(
                  ontap: () {
                    // context.go('/projects/work');
                    setState(() {
                      index = 4;
                    });
                  },

                  fisrtText: ButtonNames.btn4,
                  secText: ButtonNames.btn4sub,
                ),
                SizedBox(width: 25),
              ],
            )
          : AppBar(
              automaticallyImplyLeading: false,
              title: index != 0
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back, size: 20),
                          SizedBox(width: 5),
                          Text(
                            "Back to home",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  : null,
            ),
      body: pages[index],
    );
  }
}
