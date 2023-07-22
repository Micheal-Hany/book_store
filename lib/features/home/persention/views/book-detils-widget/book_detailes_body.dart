import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/persention/views/book-detils-widget/Custom-app-bar-book-details.dart';
import 'package:book_store/features/home/persention/views/widgets/Book-Rating.dart';
import 'package:book_store/features/home/persention/views/widgets/Custom-list-view-item.dart';
import 'package:flutter/material.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .2,
                  vertical: 10),
              child: const CustomBookImage(),
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
              style: Style.textStyle18.copyWith(color: const Color(0xff707070)),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [BookRating()]),
            const PriceAndRead()
          ],
        ),
      ),
    );
  }
}

class PriceAndRead extends StatelessWidget {
  const PriceAndRead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    topLeft: Radius.circular(16)),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "19.99 €",
                  style: Style.textStyle20.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    topRight: Radius.circular(16)),
                color: Colors.amber,
              ),
              child: Center(
                child: Text(
                  'free preview',
                  style: Style.textStyle20.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
