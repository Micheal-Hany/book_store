import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/persention/views/widgets/Custom-list-view-item.dart';
import 'package:book_store/features/home/persention/views/widgets/Custom_app_bar.dart';
import 'package:book_store/features/home/persention/views/widgets/Featured-list-view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            'Best Seller',
            style: Style.titleMedium,
          )
        ],
      ),
    );
  }
}
