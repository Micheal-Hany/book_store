import 'package:book_store/core/errors/Failure.dart';
import 'package:book_store/features/home/data/Models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetkchBestSellerBooks() {
    Dio().get('');
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetkchFeaturedBooks() {
    // TODO: implement fetkchFeaturedBooks
    throw UnimplementedError();
  }
}
