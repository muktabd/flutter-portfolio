// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/api_model/contact_me_model.dart';
import 'package:get/get.dart';

import '../domain/server/http_client/api_clients.dart';
import '../domain/server/http_client/app_config.dart';

class ContactMeController extends GetxController {
  Future contactMe({
    required String name,
    required String email,
    required String phone,
    required String projectType,
    required String projectDes,
    required BuildContext context,
  }) async {
    print("==========");

    Map<String, dynamic> params = {};
    params['name'] = name;
    params['email'] = email;
    params['phone'] = phone;
    params['project_type'] = projectType;
    params['project_des'] = projectDes;

    log(" =========== getting params ===>> \n$params\n =========== ");
    log(" =========== email params ===>> \n$email\n =========== ");

    String url = AppConfig.baseUrl + AppConfig.contactMeUri;
    var response = await ApiClients.postData(params, url);
    log("Response => ${response.toString()}");
    ContactMeModel contactMeModel = ContactMeModel.fromJson(response);
    log(contactMeModel.code.toString());
    log(url);
  }
}
