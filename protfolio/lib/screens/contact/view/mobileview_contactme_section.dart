import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:portfolio/global/widgets/loader.dart';

import '../../../components/constants.dart';
import '../../../components/section_title.dart';
import '../../../global/constants/images.dart';
import '../../../global/methods/sizebox_widget.dart';
import '../../../global/widgets/button/primary_button.dart';
import '../../../global/widgets/global_image_loader.dart';
import '../../../global/widgets/global_text.dart';
import '../../../global/widgets/text_formfield.dart';
import '../../landing/controller/home_info_controller.dart';
import '../../settings/theme/controller/theme_controller.dart';
import '../controller/contact_me_controller.dart';
import '../model/req_contact_me.dart';

class MobileviewContactMeScreen extends StatefulWidget {
  const MobileviewContactMeScreen({super.key});

  @override
  State<MobileviewContactMeScreen> createState() => _MobileviewContactMeScreenState();
}

class _MobileviewContactMeScreenState extends State<MobileviewContactMeScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return GetBuilder<ContactMeController>(
          builder: (contactMeCon) {
            return GetBuilder<HomeInfoController>(
              builder: (homeInfoCon) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  constraints: BoxConstraints(maxWidth: 1440.0),
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SectionTitle(
                        title: "Get in Touch",
                        subTitle: "Feel free to contact me for any queries you have.",
                        color: Colors.deepOrange,
                      ),
                      sizedBoxH(25.0),

                      //
                      Form(
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
                                    controller: contactMeCon.nameController,
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
                                    controller: contactMeCon.emailController,
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
                            const SizedBox(height: 15.0),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    labelText: "Mobile number",
                                    hintText: "+60123456789",
                                    keyboardType: TextInputType.phone,
                                    controller: contactMeCon.mobileNumberController,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(RegExp(r'[+0-9]*$')),
                                      LengthLimitingTextInputFormatter(15),
                                    ],
                                  ),
                                ),

                                const SizedBox(width: 10.0),
                                Expanded(
                                  child: CustomTextFormField(
                                    labelText: "Project type",
                                    hintText:
                                        "eCommerce / Ride Share / Product, Project Management etc.",
                                    keyboardType: TextInputType.text,
                                    controller: contactMeCon.projectTypeController,
                                    inputFormatters: [
                                      // FilteringTextInputFormatter.allow(
                                      //   RegExp(r'^\S[a-zA-Z./ ]*$'),
                                      // ),
                                      LengthLimitingTextInputFormatter(255),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 15.0),
                            CustomTextFormField(
                              maxLine: 4,
                              controller: contactMeCon.shortDesController,
                              labelText: "Description",
                              hintText: "Write briefly about your project..",
                              keyboardType: TextInputType.text,
                              inputFormatters: [
                                // FilteringTextInputFormatter.allow(
                                //   RegExp(r'^\S[a-zA-Z./ ]*$'),
                                // ),
                                LengthLimitingTextInputFormatter(1200),
                              ],
                            ),
                            const SizedBox(height: kDefaultPadding),

                            ///
                            CustomButtonWidget(
                              text: "Contact Me",
                              color: Colors.deepOrange,
                              textColor: Colors.white,
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  await Get.showOverlay(
                                    loadingWidget: OverlayLoadingIndicator(),
                                    asyncFunction: () async {
                                      await contactMeCon.contactMe(
                                        reqData: ReqContactMe(
                                          name: contactMeCon.nameController.text.toString(),
                                          email: contactMeCon.emailController.text.toString(),
                                          phone:
                                              contactMeCon.mobileNumberController.text.toString(),
                                          projectType:
                                              contactMeCon.projectTypeController.text.toString(),
                                          projectBrief:
                                              contactMeCon.shortDesController.text.toString(),
                                        ),
                                      );
                                    },
                                  );
                                  // showCustomSnackBar('comming soon...');
                                } else {
                                  log("validated");
                                }
                              },
                            ),
                            // sizedBoxH(30),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sizedBoxH(20.0),
                          GlobalText(
                            str:
                                "Feel free to contract me if you have any idea, sketch or project which you want to make true. Feel free to contract me if you have any idea, sketch or project which you want to make true.",
                            fontSize: 16,
                          ),
                          sizedBoxH(15.0),
                          GlobalText(
                            str: "Contact Inforamtion",
                            color: Colors.deepOrange,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
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
                                  fontWeight: FontWeight.w400,
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
                                Flexible(
                                  child: GlobalText(
                                    str: "+880 1924 262003 || +601 878 32241",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
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
                                Flexible(
                                  child: GlobalText(
                                    str: "Dhaka, Bangladesh || Selangor, Malaysia",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //
                          sizedBoxH(30.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GlobalImageLoader(
                                imagePath: Images.whatsapp,
                                imageUrl: "https://wa.me/+60187832241",
                                width: 30,
                              ),
                              GlobalImageLoader(
                                imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.linkedin?.url,
                                imagePath: Images.linkedIn,
                                width: 30,
                              ),
                              GlobalImageLoader(
                                imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.facebook?.url,
                                imagePath: Images.facebook,
                                width: 30,
                              ),
                              GlobalImageLoader(
                                imageUrl: homeInfoCon.infoDetails?.info?.socialMedia?.xtwitter?.url,
                                imagePath: Images.twitter,
                                width: 30,
                              ),
                            ],
                          ),
                        ],
                      ),

                      ///
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
