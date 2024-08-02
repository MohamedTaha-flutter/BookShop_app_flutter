import 'package:bookly_app/Features/Home/presentation/Views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../Features/Splash/presentation/Views/Splash_View.dart';
abstract class AppRouter {
  static final  router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}