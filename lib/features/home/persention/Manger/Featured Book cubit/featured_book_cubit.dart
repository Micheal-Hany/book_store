import 'package:bloc/bloc.dart';
import 'package:book_store/core/errors/Failure.dart';
import 'package:book_store/features/home/data/Models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;
  Future<void> fatchDataFeaturedBooks() async {
    emit(FeaturedBookLoading());

    var result = (await homeRepo.fetkchFeaturedBooks());
    result.fold((failure) {
      emit(FeaturedBookFailure(failure.errorMasssage));
    }, (booksList) => emit(FeaturedBookSuccess(booksList)));
  }
}
