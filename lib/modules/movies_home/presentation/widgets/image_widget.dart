import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoolMoviesImageWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final String imageUrl;

  const CoolMoviesImageWidget._({
    super.key,
    this.height,
    this.width,
    required this.imageUrl,
  });

  factory CoolMoviesImageWidget.fromUrl({
    Key? key,
    double? height,
    double? width,
    required String imageUrl,
  }) {
    return CoolMoviesImageWidget._(
      height: height,
      key: key,
      width: width,
      imageUrl: imageUrl,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width ?? context.mq.size.width * 0.3,
      height: height ?? context.mq.size.width * 0.3,
      imageUrl: imageUrl,
      placeholder: (context, url) => const CupertinoActivityIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
