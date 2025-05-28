import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.widget,
    required this.image,
    this.height,
    this.width,
  });
  final Widget widget;
  final String image;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    // double screenwidth = MediaQuery.of(context).size.width;
    // double screenheighgt = MediaQuery.of(context).size.height;

    return SizedBox(
          height: height ?? 350,
          width: width ?? 300,
          child: Card(
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  height: 130,
                  width: 300,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 3, color: Colors.white),
                  ),
                  child: Image.asset(image, fit: BoxFit.fitWidth, scale: 1.0),
                ),
                widget,
              ],
            ),
          ),
        )
        .animate(delay: Duration(milliseconds: 150 * 3))
        .slideY(begin: 0.5, end: 0, delay: Duration(milliseconds: 300))
        .fadeIn();
  }
}
