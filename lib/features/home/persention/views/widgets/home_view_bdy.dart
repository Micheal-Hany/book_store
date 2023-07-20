import 'package:book_store/features/home/persention/views/widgets/Custom-list-view-item.dart';
import 'package:book_store/features/home/persention/views/widgets/Custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), FeatureBooksListView()],
    );
  }
}
