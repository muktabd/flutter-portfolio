
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../settings/theme/controller/theme_controller.dart';
import '../../widgets/customised_scaffold.dart';
import '../controller/contact_me_controller.dart';
import 'screen_type/web_view.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {

  @override
  void initState() {
    super.initState();
    Get.find<ContactMeController>().getOthersContactMeData();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return CustomisedScaffold(
          webScaffold: WebViewContactMeScreen(),
          tabletScaffold: Card(),
          mobileScaffold: Card(),
        );
      },
    );
  }
}
