import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/src/about_and_contact/about_data/about_data.dart';
import 'package:portfolio/src/skills/widget/tech_item_image_path.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text(
          "Technical Skill",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 100),
        Expanded(
          child: GridView.builder(
            itemCount: TechItemImagePath.techItemPath.length,
            itemBuilder: (context, index) {
              return Card(
                    // color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.5, color: Colors.white),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            TechItemImagePath.techItemPath.values
                                .toList()[index],
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          TechItemImagePath.techItemPath.keys.toList()[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                  .animate(delay: Duration(milliseconds: 50 * index))
                  .slideY(
                    begin: 0.5,
                    end: 0,
                    delay: Duration(milliseconds: 300),
                  )
                  .fade();
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (width / 150).floor(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              mainAxisExtent: 150,

              // childAspectRatio: 1,
            ),
            // crossAxisCount: 20,

            // children: [],
          ),
        ),
      ],
    );
  }
}
