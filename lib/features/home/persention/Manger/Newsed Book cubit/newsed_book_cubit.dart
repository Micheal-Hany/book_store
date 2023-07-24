import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/Models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:equatable/equatable.dart';

part 'newsed_book_state.dart';

class NewsedBookCubit extends Cubit<NewsedBookState> {
  NewsedBookCubit(this.homeRepo) : super(NewsedBookInitial());
  final HomeRepo homeRepo;
  Future<void> fatchDataFeaturedBooks() async {
    emit(NewsedBookLoading());

    var result = (await homeRepo.fetkchNewstBooks());
    result.fold((failure) {
      emit(NewsedBookFailure(failure.errorMasssage));
    }, (booksList) => emit(NewsedBookSucess(booksList)));
  }
}
