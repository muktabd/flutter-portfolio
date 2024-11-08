import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../settings/theme/controller/theme_controller.dart';

class CustomisedScrolView extends StatefulWidget {
  final PreferredSizeWidget? appBar;
  final Widget? endDrawer;
  final List<Widget> slivers;
  final Widget? floatingActionButton;
  final Widget? bottomSheet;
  const CustomisedScrolView({
    super.key,
    this.appBar,
    this.endDrawer,
    required this.slivers,
    this.floatingActionButton,
    this.bottomSheet,
  });

  @override
  State<CustomisedScrolView> createState() => _CustomisedScrolViewState();
}

class _CustomisedScrolViewState extends State<CustomisedScrolView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeController) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: themeController.getDarkLightBackGroundColor(context),
          appBar: widget.appBar,
          floatingActionButton: widget.floatingActionButton,
          endDrawer: widget.endDrawer,
          bottomNavigationBar: widget.bottomSheet,
          body: SafeArea(
            child: CustomScrollView(
              slivers: widget.slivers,
            ),
          ),
        );
      },
    );
  }
}
