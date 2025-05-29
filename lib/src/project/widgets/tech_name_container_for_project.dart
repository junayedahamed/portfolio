import 'package:flutter/material.dart';

class TechNameContainerForProject extends StatelessWidget {
  const TechNameContainerForProject({
    super.key,
    required this.icon,
    required this.name,
  });
  final String icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          spacing: 4,
          children: [
            Image.asset(icon, height: 15, width: 15),
            Text(
              name,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
