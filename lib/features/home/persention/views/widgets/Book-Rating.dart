// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:book_store/core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    required this.rating,
    required this.count,
  }) : super(key: key);
  final int rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 16,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '$rating',
          style: Style.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '($count)',
          style: Style.textStyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
