import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portfolio/screens/widgets/bottom_copyrights.dart';
import 'package:get/get.dart';

import '../../../../components/constants.dart';
import '../../../../components/section_title.dart';
import '../../../../global/constants/images.dart';
import '../../../../global/methods/sizebox_widget.dart';
import '../../../../global/widgets/button/primary_button.dart';
import '../../../../global/widgets/custom_devider.dart';
import '../../../../global/widgets/custom_toast.dart';
import '../../../../global/widgets/global_image_loader.dart';
import '../../../../global/widgets/global_text.dart';
import '../../../../global/widgets/show_custom_snackbar.dart';
import '../../../../global/widgets/text_formfield.dart';
import '../../../settings/theme/controller/theme_controller.dart';
import '../../controller/contact_me_controller.dart';
import '../../model/req_contact_me.dart';

class WebViewContactMeScreen extends StatefulWidget {
  const WebViewContactMeScreen({super.key});

  @override
  State<WebViewContactMeScreen> createState() => _WebViewContactMeScreenState();
}

class _WebViewContactMeScreenState extends State<WebViewContactMeScreen> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final projectTypeController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final shortDesController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    projectTypeController.dispose();
    mobileNumberController.dispose();
    shortDesController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return GetBuilder<ContactMeController>(
          builder: (contactMeCon) {
            return Container(
              // constraints: BoxConstraints(maxWidth: 1110),
              padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SectionTitle(
                      title: "Get in Touch",
                      subTitle: "Feel free to contact me for any queries you have.",
                      color: Colors.deepOrange),
                  sizedBoxH(50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxH(10.0),
                            GlobalText(
                              str:
                                  "Feel free to contract me if you have any idea, sketch or project which you want to make true. Feel free to contract me if you have any idea, sketch or project which you want to make true.",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            sizedBoxH(15.0),
                            GlobalText(
                              str: "Contact Inforamtion",
                              color: Colors.deepOrange,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),

                            ///
                            sizedBoxH(15.0),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.email),
                                  sizedBoxW(8.0),
                                  GlobalText(
                                    str: "abdullahibnamukta@gmail.com",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.call),
                                  sizedBoxW(8.0),
                                  GlobalText(
                                    str: "+880 1824 262003, +601 878 32241",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on_rounded),
                                  sizedBoxW(8.0),
                                  GlobalText(
                                    str: "Dhaka, Bangladesh, Selangor, Malaysia",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                            //
                            sizedBoxH(30.0),
                            Row(
                              children: [
                                GlobalImageLoader(
                                  // imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.github?.url,
                                  imagePath: Images.whatsapp,
                                  width: 30,
                                ),
                                GlobalImageLoader(
                                  // imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.linkedin?.url,
                                  imagePath: Images.linkedIn,
                                  width: 30,
                                ),
                                GlobalImageLoader(
                                  // imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.facebook?.url,
                                  imagePath: Images.facebook,
                                  width: 30,
                                ),
                                GlobalImageLoader(
                                  // imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.xtwitter?.url,
                                  imagePath: Images.twitter,
                                  width: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      ///
                      sizedBoxW(10.0),

                      ///
                      Expanded(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              sizedBoxH(10),

                              /// * ==@ CONTACT ME FORM ==
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      labelText: 'Your name',
                                      hintText: 'Jhon Doe',
                                      controller: nameController,
                                      keyboardType: TextInputType.name,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp(r'^\S[a-zA-Z. ]*$')),
                                        LengthLimitingTextInputFormatter(35),
                                      ],
                                    ),
                                  ),
                                  sizedBoxW(10),
                                  Expanded(
                                    child: CustomTextFormField(
                                      labelText: "Email address",
                                      hintText: "name@example.com",
                                      keyboardType: TextInputType.emailAddress,
                                      controller: emailController,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@.]*$')),
                                        LengthLimitingTextInputFormatter(50),
                                      ],
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please provide your active email";
                                        }
                                        if (!value.contains("@") || !value.contains(".")) {
                                          return "Email is not valid";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      labelText: "Mobile number",
                                      hintText: "+60123456789",
                                      keyboardType: TextInputType.phone,
                                      controller: mobileNumberController,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp(r'[+0-9]*$')),
                                        LengthLimitingTextInputFormatter(15),
                                      ],
                                    ),
                                  ),
                                  sizedBoxW(10),
                                  Expanded(
                                    child: CustomTextFormField(
                                      labelText: "Project type",
                                      hintText: "eCommerce / Ride Share / Product, Project Management etc.",
                                      keyboardType: TextInputType.text,
                                      controller: projectTypeController,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp(r'^\S[a-zA-Z./ ]*$')),
                                        LengthLimitingTextInputFormatter(255),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              sizedBoxH(15),
                              CustomTextFormField(
                                maxLine: 4,
                                controller: shortDesController,
                                labelText: "Description",
                                hintText: "Write briefly about your project..",
                                keyboardType: TextInputType.text,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\S[a-zA-Z./ ]*$')),
                                  LengthLimitingTextInputFormatter(1200),
                                ],
                              ),
                              const SizedBox(height: kDefaultPadding * 2),

                              ///
                              ///
                              CustomButtonWidget(
                                text: "Contact Me",
                                color: Colors.deepOrange,
                                textColor: Colors.white,
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    log("validated");
                                    final result = await contactMeCon.contactMe(
                                      reqData: ReqContactMe(
                                        name: nameController.text.toString(),
                                        email: emailController.text.toString(),
                                        phone: mobileNumberController.text.toString(),
                                        projectType: projectTypeController.text.toString(),
                                        projectDes: shortDesController.text.toString(),
                                      ),
                                    );
                                    if (result == true) {
                                      showToast('Your data has been sent successfully.');
                                    } else {
                                      showCustomSnackBar('Something went wrong.');
                                    }
                                  } else {
                                    log("validated");
                                  }
                                },
                              ),
                              sizedBoxH(30),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  sizedBoxH(30),

                  ///
                  BottomCopyRights(),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
