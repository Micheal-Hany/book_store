import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/app-reouter.dart';
import 'package:book_store/core/utils/service%20locator.dart';
import 'package:book_store/features/home/data/repos/home-repo-implemention.dart';
import 'package:book_store/features/home/persention/Manger/Featured%20Book%20cubit/featured_book_cubit.dart';
import 'package:book_store/features/home/persention/Manger/Newsed%20Book%20cubit/newsed_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(getIt.get<HomeRepoImpl>())
            ..fatchDataFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewsedBookCubit(getIt.get<HomeRepoImpl>())..fatchNewsedBooks(),
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
