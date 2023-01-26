// ignore_for_file: avoid_print

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/app_constants.dart';
import 'package:flutter_portfolio/http_cleint/api_clients.dart';
import 'package:flutter_portfolio/models/api_model/blog_post_model.dart';
import 'package:flutter_portfolio/models/api_model/contact_me_model.dart';
import 'package:get/get.dart';

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

    String url = AppConstants.baseUrl + AppConstants.createPostUri;
    var response = await ApiClients.postRaw(params, url);
    ContactMeModel contactMeModel = ContactMeModel.fromJson(response);
    log(contactMeModel.code.toString());
    log(url);
  }

  Future getAllBlogPosts() async {
    String url = AppConstants.baseUrl + AppConstants.getAllPostUri;
    var response = await ApiClients.getJson(url);
    BlogPostModel blogPostModel = BlogPostModel.fromJson(response);
    log(blogPostModel.code.toString());
    log(url);
  }
}
