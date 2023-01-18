import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget circleImageWidget(BuildContext context, String imageUrl, double width,
    double height, double circleRadius) {
  return SizedBox(
    width: width,
    height: height,
    child: CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circleRadius),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      // placeholder: (context, url) => const CircularProgressIndicator(),
      placeholder: (context, url) => const Center(child: Text('Loading')),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    ),
  );
}
