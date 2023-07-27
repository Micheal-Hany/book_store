import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/persention/views/widgets/best-seller-List-view-item.dart';
import 'package:book_store/features/search/persention/views/widgets/custom%20search%20filed.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFiled(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
            child: Text(
              'Reasult',
              style: Style.textStyle20,
            ),
          ),
          Expanded(child: SeatrchViewList())
        ],
      ),
    );
  }
}

class SeatrchViewList extends StatelessWidget {
  const SeatrchViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child:
              // BestSellerListViewItem(bookModel: ,)
              Text('Serch List View'),
        );
      },
    );
  }
}
