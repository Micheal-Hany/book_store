import 'package:book_store/core/widgets/Custom%20error%20massage.dart';
import 'package:book_store/features/home/data/Models/book_model/book_model.dart';
import 'package:book_store/features/home/persention/Manger/Newsed%20Book%20cubit/newsed_book_cubit.dart';
import 'package:book_store/features/home/persention/views/widgets/best-seller-List-view-item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsedBookCubit, NewsedBookState>(
      builder: (context, state) {
        if (state is NewsedBookSucess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.booksList.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListViewItem(
                    bookModel: state.booksList[index],
                  ));
            },
          );
        } else if (state is NewsedBookFailure) {
          return CustomErrorMassage(erorMassage: state.errrorMassage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
