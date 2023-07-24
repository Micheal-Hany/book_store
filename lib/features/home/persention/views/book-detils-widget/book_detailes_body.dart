import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/persention/views/book-detils-widget/Book%20action%20button.dart';
import 'package:book_store/features/home/persention/views/book-detils-widget/Custom-app-bar-book-details.dart';
import 'package:book_store/features/home/persention/views/book-detils-widget/similer%20books%20list%20view.dart';
import 'package:book_store/features/home/persention/views/widgets/Book-Rating.dart';
import 'package:book_store/features/home/persention/views/widgets/Custom-list-view-item.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .24,
                    ),
                    child:  CustomBookImage(imageUrl: 'http://books.google.com/books/content?id=zsJlEK4nK7sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'the jungle book',
                    style: Style.textStyle30
                        .copyWith(fontSize: 35, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Budyerd Kipling',
                    style: Style.textStyle18
                        .copyWith(color: const Color(0xff707070)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [BookRating()]),
                  const BookAction(),
                  const Expanded(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'you can also like',
                      style: Style.textStyle18,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SimilerBooksListView()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
