// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/app_constants.dart';
import 'package:flutter_portfolio/http_cleint/api_clients.dart';
import 'package:flutter_portfolio/models/api_model/contact_me_model.dart';
import 'package:get/get.dart';

class ContactMeController extends GetxController {

  ContactMeModel contactMeModel = ContactMeModel();

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

    print("getting params ===>> ");
    print(params);
    print("======================");

    
    var url = AppConstants.baseUrl+AppConstants.contactMeUri;

    var response = await ApiClients.postJson(params, url);
    ContactMeModel.fromJson(response);
    log(response);




   

  }

}
