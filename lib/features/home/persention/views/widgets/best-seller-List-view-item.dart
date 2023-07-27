import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/assests.dart';
import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/data/Models/book_model/book_model.dart';
import 'package:book_store/features/home/persention/views/widgets/Book-Rating.dart';
import 'package:book_store/features/home/persention/views/widgets/Custom-list-view-item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookview');
      },
      child: SizedBox(
        height: 135,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ??
                    'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg'),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo!.title ?? 'Hany',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          Style.textStyle20.copyWith(fontFamily: kGetSectrFine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo!.authors?[0] ?? 'Micheal',
                    style: Style.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Free',
                          style: Style.textStyle20
                              .copyWith(fontWeight: FontWeight.bold)),
                      BookRating(
                        count: bookModel.volumeInfo!.pageCount ?? 0,
                        rating: bookModel.volumeInfo!.pageCount ?? 0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
