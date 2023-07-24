part of 'newsed_book_cubit.dart';

abstract class NewsedBookState extends Equatable {
  const NewsedBookState();

  @override
  List<Object> get props => [];
}

class NewsedBookInitial extends NewsedBookState {}

class NewsedBookSucess extends NewsedBookState {
  final List<BookModel> booksList;
  const NewsedBookSucess(
    this.booksList,
  );
}

class NewsedBookLoading extends NewsedBookState {}

class NewsedBookFailure extends NewsedBookState {
  final String errrorMassage;
  const NewsedBookFailure(
    this.errrorMassage,
  );
}
