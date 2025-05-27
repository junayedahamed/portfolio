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

      duration: Duration(seconds: 10),

      // reverseDuration: Duration(milliseconds: 800),
    )..repeat();
    waitAndgo();
  }

  void waitAndgo() async {
    await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    final animate = Tween(begin: 0, end: pi * 2).animate(animationController);
    // final arg = Matrix4.columns(

    // ;
    Matrix4 buildRollingMatrix(double angle) {
      return Matrix4.identity()
        ..setEntry(3, 2, 0.002) // perspective
        ..rotateZ(angle); // rotate like a wheel
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {},
        child: Center(
          child: AnimatedBuilder(
            animation: animate,
            builder: (context, child) {
              final angle = animationController.value * 2 * pi;

              return Transform(
                alignment: Alignment.center,
                transform: buildRollingMatrix(angle),
                // ..rotateX(angle / 3)
                // ..rotateY(angle / 5),
                // flipX: true,
                origin: Offset(0, 4),

                child: child,
              );
            },

            child: MouseRegion(
              onEnter: (event) {
                return setState(() {
                  animationController.stop();
                });
              },
              onExit: (event) {
                setState(() {
                  animationController.repeat();
                });
              },
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("image/welcome.png"),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),

                // child: ,
              ),
            ),
            // child: Container(height: 100, width: 100, color: Colors.amber),
          ),
        ),
      ),
    );
  }
}
