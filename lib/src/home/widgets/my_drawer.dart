import 'package:flutter/material.dart';
import 'package:portfolio/src/home/widgets/app_bar_action_buttons.dart';
import 'package:portfolio/src/home/widgets/button_names.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final List pages = [];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width / 2,
      child: Drawer(
        child: Column(
          spacing: 15,
          children: [
            AppBarActionButtons(
              ontap: () {},

              fisrtText: ButtonNames.btn1,
              secText: ButtonNames.btn1sub,
            ),
            SizedBox(width: 15),
            AppBarActionButtons(
              ontap: () {},

              fisrtText: ButtonNames.btn2,
              secText: ButtonNames.btn2sub,
            ),
            SizedBox(width: 15),
            AppBarActionButtons(
              ontap: () {},

              fisrtText: ButtonNames.btn3,
              secText: ButtonNames.btn3sub,
            ),
            SizedBox(width: 15),
            AppBarActionButtons(
              ontap: () {},

              fisrtText: ButtonNames.btn4,
              secText: ButtonNames.btn4sub,
            ),
          ],
        ),
      ),
    );
  }
}
