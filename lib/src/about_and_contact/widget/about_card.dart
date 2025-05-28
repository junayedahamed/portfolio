import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheighgt = MediaQuery.of(context).size.height;
    print(screenheighgt / 2);
    print(screenwidth / 5);
    return SizedBox(
      height: 390,
      width: 300,
      child: Card(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
                border: Border.all(width: 3, color: Colors.white),
              ),
              child: Image.asset("image/welcome.png", fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
