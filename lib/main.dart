import 'package:flutter/material.dart';
import 'package:portfolio/src/home/home_page.dart';
import 'package:portfolio/src/routers/router.dart';
import 'package:portfolio/src/theme/my_website_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: MyWebsiteTheme().dark,
      routerConfig: MyRouter.router,
    );
  }
}
