import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/persention/views/widgets/Custom_app_bar.dart';
import 'package:book_store/features/home/persention/views/widgets/CustomBookImage.dart';
import 'package:book_store/features/home/persention/views/widgets/best%20seller%20list%20view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureBooksListView(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: Text(
                  'Best Seller',
                  style: Style.textStyle18,
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
