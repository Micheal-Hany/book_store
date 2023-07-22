import 'package:book_store/core/utils/assests.dart';
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
            style: Style.textStyle18,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 4 / 6,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssestsData.testImage))),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Harray poter and the Gobolt of fire 1111111111111',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Style.textStyle20,
                ),
              ),
              const Text(
                'decription',
                style: Style.textStyle18,
              ),
              const Row(
                children: [Text('\$20'), Text('4.6 (500)')],
              )
            ],
          )
        ],
      ),
    );
  }
}
