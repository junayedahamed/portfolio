import 'package:go_router/go_router.dart';
import 'package:portfolio/src/home/home_page.dart';
import 'package:portfolio/src/splash_screen/splash_screen.dart';

class MyRouter {
  MyRouter._();
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashScreen()),
      GoRoute(path: '/home', builder: (context, state) => HomePage()),
    ],
  );
}
