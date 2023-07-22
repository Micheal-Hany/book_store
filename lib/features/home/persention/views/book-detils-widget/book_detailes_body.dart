import 'package:book_store/features/home/persention/views/book-detils-widget/Custom-app-bar-book-details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [CustomBookDetailsAppBar()],
        ),
      ),
    );
  }
}
