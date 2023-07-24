// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_store/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomErrorMassage extends StatelessWidget {
  const CustomErrorMassage({
    Key? key,
    required this.erorMassage,
  }) : super(key: key);
  final String erorMassage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        erorMassage,
        style: Style.textStyle30,
      ),
    );
  }
}
