// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'featured_book_cubit.dart';

abstract class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

class FeaturedBookInitial extends FeaturedBookState {}

class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> booksList;
  const FeaturedBookSuccess(
    this.booksList,
  );
}

class FeaturedBookFailure extends FeaturedBookState {
  final String errrorMassage;
  const FeaturedBookFailure(
    this.errrorMassage,
  );
}

class FeaturedBookLoading extends FeaturedBookState {}
