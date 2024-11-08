
import 'package:flutter/material.dart';

enum ImageFor {
  asset,
  network,
}
class GlobalImageLoader extends StatelessWidget {
  const GlobalImageLoader({
    super.key,
    required this.imagePath,
    this.imageFor = ImageFor.asset,
    this.height,
    this.width,
    this.fit,
    this.color,
    this.errorBuilder,
    this.borderRadius,
  });

  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  final ImageErrorWidgetBuilder? errorBuilder;
  final ImageFor imageFor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {

    final imageWidget = imageFor == ImageFor.network
        ? Image.network(
      imagePath,
      height: height,
      width: width,
      fit: fit,
      color: color,
      errorBuilder: errorBuilder ?? (context, exception, stackTrace) => Center(
          child: Image.asset(
            "assets/images/placeholder.png",
            height: height ?? 80,
            width: width ?? 80,
          )),
    ) : Image.asset(
      imagePath,
      height: height,
      width: width,
      fit: fit,
      color: color,
      errorBuilder: errorBuilder ??
              (context, exception, stackTrace) => Center(
              child: Image.asset(
                "assets/images/placeholder.png",
                height: height ?? 80,
                width: width ?? 80,
                fit: BoxFit.fill,
              )),
    );

    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: imageWidget,
    );
  }
}
