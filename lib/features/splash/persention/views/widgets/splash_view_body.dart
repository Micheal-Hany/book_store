import 'package:book_store/core/utils/assests.dart';
import 'package:flutter/material.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssestsData.logo,
          width: 300,
          height: 150,
        ),
        const Text(
          'Read free Books',
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
