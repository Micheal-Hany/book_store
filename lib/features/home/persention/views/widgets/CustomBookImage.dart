import 'dart:ffi';

import 'package:book_store/core/widgets/Custom%20error%20massage.dart';
import 'package:book_store/core/widgets/custom%20loading%20indecator.dart';
import 'package:book_store/features/home/persention/Manger/Featured%20Book%20cubit/featured_book_cubit.dart';
import 'package:book_store/features/home/persention/views/widgets/Custom-list-view-item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookFailure) {
          return CustomErrorMassage(erorMassage: state.errrorMassage);
        } else if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.booksList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomBookImage(
                      imageUrl: state
                          .booksList[index].volumeInfo!.imageLinks!.thumbnail!,
                    ));
              },
            ),
          );
        }
        return const Text('');
      },
    );
  }
}
