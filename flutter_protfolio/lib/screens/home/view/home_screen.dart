import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../widgets/customised_scaffold.dart';
import '../../widgets/home_dialog_menu.dart';
import '../controller/home_info_controller.dart';
import '../screen_type/mobile_view.dart';
import '../screen_type/tablet_view.dart';
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
      /* floatingActionButton: FloatingActionButton(
        child: Icon(Icons.menu),
        onPressed: () async {
          await showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return HomeDialogWidget();
            },
          );
        },
      ), */
      webScaffold: WebViewScreen(),
      tabletScaffold: TabletViewScreen(),
      mobileScaffold: MobileViewScreen(),
    );
  }
}
