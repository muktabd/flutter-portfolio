import 'dart:developer';

import 'package:get/get.dart';

import '../model/home_info_data.dart';
import 'home_info_repo.dart';

class HomeInfoController extends GetxController implements GetxService {
  static HomeInfoController get current => Get.find();
  final HomeInfoRepo repository = HomeInfoRepo();

  HomeInfoData? infoDetails;
  Future getHomeInfoData() async {
    try {
      final res = await repository.fetchHomeInfoData();

      if (res != null) {
        infoDetails = res;
        update();
      }
    } on Exception catch (e) {
      log(e.toString());
    }
  }
}
