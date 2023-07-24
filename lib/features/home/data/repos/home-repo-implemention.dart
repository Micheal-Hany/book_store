// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_store/core/utils/api-service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:book_store/core/errors/Failure.dart';
import 'package:book_store/features/home/data/Models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl({
    required this.apiService,
  });
  @override
  Future<Either<Failure, List<BookModel>>> fetkchNewstBooks() async {
    try {
      var data =
          await apiService.get(endPoint: 'volumes?q=subject:computer science');
      List<BookModel> bookList = [];
      // for (int i = 0; i < data['items'].length; i++) {
      //   bookList.add(data['items'][i])
      // }
      for (var item in data['items']) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFalure.fromDioExeption(e));
      } else {
        return left(ServerFalure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetkchFeaturedBooks() async {
    try {
      var data =
          await apiService.get(endPoint: 'volumes?q=subject:Programming');
      List<BookModel> bookList = [];
      // for (int i = 0; i < data['items'].length; i++) {
      //   bookList.add(data['items'][i])
      // }
      for (var item in data['items']) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFalure.fromDioExeption(e));
      } else {
        return left(ServerFalure(e.toString()));
      }
    }
  }
}
