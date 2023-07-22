import 'package:book_store/features/home/persention/views/home_view.dart';
import 'package:book_store/features/splash/persention/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  
static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
     GoRoute(
      path: '/hpmview',
      builder: (context, state) => const HomeView(),
    ),
  ],
);

}