import 'package:book_store/features/home/persention/views/widgets/Custom-list-view-item.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomBookImage());
        },
      ),
    );
  }
}
