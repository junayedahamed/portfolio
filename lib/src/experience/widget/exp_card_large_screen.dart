import 'package:flutter/material.dart';
import 'package:portfolio/src/about_and_contact/widget/about_card.dart';
import 'package:portfolio/src/experience/exp_data/exp_data.dart';

class ExpCardLargeScreen extends StatelessWidget {
  const ExpCardLargeScreen({super.key});

  TextStyle textStyle() {
    return TextStyle(fontSize: 13, fontWeight: FontWeight.w400);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          //about card one
          AboutCard(
            image: ExpData.companyLogo,
            widget: Column(
              spacing: 7,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ExpData.companyName,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    // textAlign: TextAlign.center,
                    ExpData.position,
                    style: textStyle(),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    // textAlign: TextAlign.center,
                    ExpData.jobtype,
                    style: textStyle(),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    // textAlign: TextAlign.center,
                    ExpData.duration,
                    style: textStyle(),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    // textAlign: TextAlign.center,
                    ExpData.compCountry,
                    style: textStyle(),
                  ),
                ),
                //tech used row
                Row(
                  spacing: 10,
                  children: List.generate(ExpData.techused.length, (index) {
                    return Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          ExpData.techused[index],
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ),
                    );
                  }),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    // textAlign: TextAlign.center,
                    ExpData.jobDescriprion,
                    style: textStyle(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          //about card two
          // AboutCard(
          //   image: AboutData.conimage,
          //   widget: Column(
          //     children: [
          //       SizedBox(height: 30),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Text(
          //             "Contact".toUpperCase(),
          //             style: TextStyle(
          //               fontSize: 16,
          //               fontWeight: FontWeight.w400,
          //             ),
          //           ),
          //           Text(
          //             "Social".toUpperCase(),
          //             style: TextStyle(
          //               fontSize: 16,
          //               fontWeight: FontWeight.w400,
          //             ),
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: 10),

          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           TextButton(
          //             onPressed: () {},
          //             child: Text(
          //               "Email",
          //               style: TextStyle(color: Colors.cyanAccent),
          //             ),
          //           ),
          //           TextButton(
          //             onPressed: () {},
          //             child: Text(
          //               "Github",
          //               style: TextStyle(color: Colors.cyanAccent),
          //             ),
          //           ),
          //         ],
          //       ),

          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Text("📍 Dhaka,BD"),
          //           TextButton(
          //             onPressed: () {},
          //             child: Text(
          //               "LinkedIn",
          //               style: TextStyle(color: Colors.cyanAccent),
          //             ),
          //           ),
          //         ],
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           Text("                     "),
          //           TextButton(
          //             onPressed: () {},
          //             child: Text(
          //               "Facebook",
          //               style: TextStyle(color: Colors.cyanAccent),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
