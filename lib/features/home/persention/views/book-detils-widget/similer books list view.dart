import 'package:book_store/features/home/persention/views/widgets/Custom-list-view-item.dart';
import 'package:flutter/material.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomBookImage(imageUrl: 'http://books.google.com/books/content?id=zsJlEK4nK7sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',));
        },
      ),
    );
  }
}
