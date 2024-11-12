import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controller/url_controller/url_controller.dart';
import '../../../global/widgets/network_image_with_loader.dart';

class SocialMediaWidget extends StatelessWidget {
  final String assetImage, icon, url;

  const SocialMediaWidget({
    super.key,
    required this.assetImage,
    required this.icon,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UrlAndPlatformController>(
      builder: (urlnPlatformCon) {
        return SizedBox(
          width: urlnPlatformCon.isMobile ? 45 : 60,
          height: urlnPlatformCon.isMobile ? 45 : 60,
          child: IconButton(
            icon: icon != null
                ? SizedBox(
                    height: 80,
                    width: 80,
                    child: NetworkImageWithLoader(icon),
                  )
                : Image.asset(
                    assetImage,
                    height: 80,
                    width: 80,
                  ),
            onPressed: () async {
              if (!await launchUrl(Uri.parse(url))) {
                throw Exception('Could not launch $url');
              }
            },
          ),
        );
      },
    );
  }
}
