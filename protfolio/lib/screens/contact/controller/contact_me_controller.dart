// ignore_for_file: avoid_print

import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '/screens/contact/model/req_contact_me.dart';

import '../model/contact_me_data.dart';
import '../repo/contact_me_repo.dart';

class ContactMeController extends GetxController {
  final ContactMeRepo repo = ContactMeRepo();

  OtherSocialMediaData? otherContatData;

  // final nameController = TextEditingController();
  // final emailController = TextEditingController();
  // final projectTypeController = TextEditingController();
  // final mobileNumberController = TextEditingController();
  // final shortDesController = TextEditingController();

  // @override
  // void dispose() {
  //   super.dispose();
  //   nameController.dispose();
  //   emailController.dispose();
  //   projectTypeController.dispose();
  //   mobileNumberController.dispose();
  //   shortDesController.dispose();
  // }

  Future getOthersContactMeData() async {
    try {
      final res = await repo.fetchOthersContactMeData();

      if (res != null) {
        otherContatData = res;
        update();
      }
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  bool successfullySent = false;
  Future<bool?> contactMe({
    required ReqContactMe reqData,
  }) async {
    try {
      final res = await repo.sendYourContactData(reqData: reqData);

      if (res != null) {
        successfullySent = true;
        update();
      }
    } on Exception catch (e) {
      log(e.toString());
    }
    return null;
  }
}
