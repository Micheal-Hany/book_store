import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:book_store/core/utils/api-service.dart';
import 'package:book_store/features/home/data/repos/home-repo-implemention.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiService: getIt.get<ApiService>()));
}
