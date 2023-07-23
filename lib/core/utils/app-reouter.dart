import 'package:book_store/features/home/persention/views/book-details-view.dart';
import 'package:book_store/features/home/persention/views/home_view.dart';
import 'package:book_store/features/search/persention/views/search%20vie.dart';
import 'package:book_store/features/splash/persention/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeview',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookview',
        builder: (context, state) => const BookView(),
      ),
      GoRoute(
        path: '/searchview',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
// SearchView
