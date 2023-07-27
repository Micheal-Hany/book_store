import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/assests.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 3.5 / 5.5,
          child: CachedNetworkImage(
            errorWidget: (context, url, error) {
              return Container(
                  color: Colors.white.withOpacity(.3),
                  child: const Center(
                      child: Icon(
                    Icons.error_outline,
                    size: 40,
                    color: kprimeColor,
                  )));
            },
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            placeholder: (context, url) {
              return Container(
                  color: Colors.white,
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: kprimeColor,
                    ),
                  ));
            },
          )),
    );
  }
}


// Container(
//         decoration: BoxDecoration(
           
//             borderRadius: BorderRadius.circular(16),
//             image: DecorationImage(
//                 fit: BoxFit.fill, image: NetworkImage(imageUrl))),
//       ),