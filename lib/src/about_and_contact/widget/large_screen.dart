import 'package:flutter/material.dart';
import 'package:portfolio/src/about_and_contact/about_data/about_data.dart';
import 'package:portfolio/src/about_and_contact/widget/about_card.dart';

class LargeScreenAbout extends StatelessWidget {
  const LargeScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //about card one
          AboutCard(
            image: AboutData.image,
            widget: Column(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AboutData.myname,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text(
                  textAlign: TextAlign.center,
                  AboutData.aboutDescription,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          //about card two
          AboutCard(
            image: AboutData.conimage,
            widget: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Contact".toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Social".toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Email",
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Github",
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("📍 Dhaka,BD"),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "LinkedIn",
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("                     "),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Facebook",
                        style: TextStyle(color: Colors.cyanAccent),
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
