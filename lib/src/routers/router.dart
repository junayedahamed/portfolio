import 'package:go_router/go_router.dart';
import 'package:portfolio/src/about_and_contact/about_and_contact.dart';
import 'package:portfolio/src/experience/experience_page.dart';
import 'package:portfolio/src/page_view/page_view.dart';
import 'package:portfolio/src/project/project_page.dart';
import 'package:portfolio/src/skills/skill_page.dart';
import 'package:portfolio/src/splash_screen/splash_screen.dart';

class MyRouter {
  MyRouter._();
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashScreen()),
      GoRoute(path: '/home', builder: (context, state) => MyPageView()),
      GoRoute(
        path: '/about/bio',
        builder: (context, state) => AboutAndContact(),
      ),
      GoRoute(
        path: '/experties/skill',
        builder: (context, state) => SkillPage(),
      ),
      GoRoute(
        path: '/experience/jobs',
        builder: (context, state) => ExperiencePage(),
      ),
      GoRoute(
        path: '/projects/work',
        builder: (context, state) => ProjectPage(),
      ),
    ],
  );
}
