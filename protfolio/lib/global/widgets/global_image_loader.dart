import 'package:flutter/material.dart';

import '../methods/custom_url_launcher.dart';
import '../../../global/constants/images.dart';

enum ImageFor { asset, network }

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
    this.onTap,
    this.imageUrl,
  });

  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  final ImageErrorWidgetBuilder? errorBuilder;
  final ImageFor imageFor;
  final BorderRadius? borderRadius;
  final void Function()? onTap;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final Image imageWidget;

    if (imageFor == ImageFor.network) {
      imageWidget = Image.network(
        imagePath,
        height: height,
        width: width,
        fit: fit,
        color: color,
        errorBuilder:
            errorBuilder ??
            (context, exception, stackTrace) =>
                Center(child: Image.asset(Images.placeholder, height: 80, width: 80)),
      );
    } else {
      imageWidget = Image.asset(
        imagePath,
        height: height,
        width: width,
        fit: fit,
        color: color,
        errorBuilder:
            errorBuilder ??
            (context, exception, stackTrace) =>
                Center(child: Image.asset(Images.placeholder, height: 80, width: 80)),
      );
    }

    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: _HoverEffectWrapper(
          onTap:
              imageUrl != null
                  ? () async {
                    launchUrlNow(imageUrl ?? '');
                  }
                  : onTap,
          child: imageWidget,
        ),
      ),
    );
  }
}

class _HoverEffectWrapper extends StatefulWidget {
  final Widget child;
  final void Function()? onTap;

  const _HoverEffectWrapper({required this.child, this.onTap});

  @override
  State<_HoverEffectWrapper> createState() => _HoverEffectWrapperState();
}

class _HoverEffectWrapperState extends State<_HoverEffectWrapper> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedScale(
          duration: const Duration(milliseconds: 300),
          scale: _isHovering ? 1.05 : 1.0,
          child: widget.child,
        ),
      ),
    );
  }
}
