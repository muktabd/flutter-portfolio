import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaWidget extends StatelessWidget {
  final String assetImage, icon, url;
    final bool isMobile;
  const SocialMediaWidget({
    super.key,
    required this.assetImage,
    required this.icon,
    required this.url,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isMobile ? 45 : 60,
      height: isMobile ? 45 : 60,
      child: IconButton(
        // icon: CircleAvatar(backgroundImage: NetworkImage('https://cors-anywhere.herokuapp.com/$icon')),
        icon: icon.isNotEmpty && icon != null || icon != 'null'
        ? CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(icon),
          foregroundImage: CachedNetworkImageProvider(icon),
          // child: Icon(Icons.error),
        ) : Image.asset(assetImage),
        onPressed: () async {
          if (!await launchUrl(Uri.parse(url))) {
            throw Exception('Could not launch $url');
          }
        },
      ),
    );
  }
}
