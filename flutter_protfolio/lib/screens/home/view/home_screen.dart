import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../widgets/customised_scaffold.dart';
import '../../landing/controller/home_info_controller.dart';
import '../../landing/mobile_view.dart';
import '../../landing/tablet_view.dart';
import '../screen_type/web_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Get.find<HomeInfoController>().getHomeInfoData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CustomisedScaffold(
      isStack: true,
      webScaffold: WebViewScreen(),
      tabletScaffold: TabletViewLandingSection(),
      mobileScaffold: MobileViewLandingSection(),
    );
  }
}
