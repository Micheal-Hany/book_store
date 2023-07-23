import 'package:book_store/core/errors/Failure.dart';
import 'package:book_store/features/home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetkchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetkchFeaturedBooks();
}
