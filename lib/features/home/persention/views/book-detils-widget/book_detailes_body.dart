import 'package:book_store/features/home/persention/views/book-detils-widget/Custom-app-bar-book-details.dart';
import 'package:book_store/features/home/persention/views/widgets/Custom-list-view-item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .19,
                  vertical: 10),
              child: const CustomBookImage(),
            )
          ],
        ),
      ),
    );
  }
}
