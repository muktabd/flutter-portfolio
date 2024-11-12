// ignore_for_file: avoid_print

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/domain/server/http_client/app_config.dart';
import 'package:flutter_portfolio/models/api_model/blog_post_model.dart';
import 'package:flutter_portfolio/screens/contact/model/req_contact_me.dart';
import 'package:get/get.dart';

import '../../../domain/server/http_client/api_clients.dart';


class BlogPostController extends GetxController {
  Future createPost({
    required String image,
    required String title,
    required String shortDes,
    required String longDes,
    required String createdAt,
    required BuildContext context,
  }) async {
    print("==========");

    Map<String, dynamic> params = {};
    params['image'] = image;
    params['title'] = title;
    params['short_des'] = shortDes;
    params['long_des'] = longDes;
    params['created_at'] = createdAt;

    log(" =========== getting params ===>> \n$params\n =========== ");

    String url = AppConfig.baseUrl + AppConfig.createPostUri;
    var response = await ApiClients.postData(params, url);

    log(url);
  }

  Future getAllBlogPosts() async {
    String url = AppConfig.baseUrl + AppConfig.getAllPostUri;
    var response = await ApiClients.getJson(url);
    BlogPostModel blogPostModel = BlogPostModel.fromJson(response);
    log(blogPostModel.code.toString());
    log(url);
  }
}
