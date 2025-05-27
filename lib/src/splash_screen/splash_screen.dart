import 'dart:math';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,

      duration: Duration(seconds: 5),
      // reverseDuration: Duration(milliseconds: 800),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    final animate = Tween(begin: 0, end: pi * 2).animate(animationController);
    // final arg = Matrix4.columns(

    // ;
    return Scaffold(
      // backgroundColor: Colrs.black,
      body: Center(
        child: AnimatedBuilder(
          animation: animate,
          builder: (context, child) {
            final angle = animationController.value * 2 * pi;

            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateZ(angle),
              // ..rotateX(angle / 3)
              // ..rotateY(angle / 5),
              // flipX: true,
              origin: Offset(0, 0),

              child: child,
            );
          },
          child: Image.asset("image/welcome.png"),
          // child: Container(height: 100, width: 100, color: Colors.amber),
        ),
      ),
    );
  }
}
