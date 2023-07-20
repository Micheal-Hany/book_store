import 'package:book_store/constants.dart';
import 'package:book_store/features/splash/persention/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kprimeColor),
    );
  }
}
