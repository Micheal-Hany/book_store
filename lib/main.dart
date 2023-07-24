import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/api-service.dart';
import 'package:book_store/core/utils/app-reouter.dart';
import 'package:book_store/core/utils/service%20locator.dart';
import 'package:book_store/features/home/data/repos/home-repo-implemention.dart';
import 'package:book_store/features/home/persention/Manger/Featured%20Book%20cubit/featured_book_cubit.dart';
import 'package:book_store/features/home/persention/Manger/Newsed%20Book%20cubit/newsed_book_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => NewsedBookCubit(getIt.get<HomeRepoImpl>()),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimeColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
