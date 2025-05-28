import 'package:flutter/material.dart';
import 'package:portfolio/src/about_and_contact/about_data/about_data.dart';
import 'package:portfolio/src/about_and_contact/widget/about_card.dart';

class SmallScreenAbout extends StatelessWidget {
  const SmallScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //about card one
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: AboutCard(
            // width: 130,
            // height: 350,
            image: AboutData.image,
            widget: Column(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  AboutData.myname,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text(
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  AboutData.aboutDescription,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 20),
        //about card two
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: AboutCard(
            // width: 130,
            // height: 300,
            image: AboutData.conimage,
            widget: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Contact".toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Social".toUpperCase(),
                      overflow: TextOverflow.ellipsis,
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
                        overflow: TextOverflow.ellipsis,
                        "Email",
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        "Github",
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("📍 Dhaka,BD", overflow: TextOverflow.ellipsis),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "LinkedIn",
                        overflow: TextOverflow.ellipsis,
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
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
