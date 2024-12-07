import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portfolio/global/widgets/button/primary_button.dart';
import 'package:flutter_portfolio/global/widgets/custom_toast.dart';
import 'package:flutter_portfolio/screens/contact/controller/contact_me_controller.dart';
import 'package:flutter_portfolio/global/methods/sizebox_widget.dart';
import 'package:flutter_portfolio/global/widgets/text_formfield.dart';
import 'package:flutter_portfolio/screens/contact/model/req_contact_me.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_portfolio/components/constants.dart';
import '../../../components/section_title.dart';
import '../../../global/widgets/custom_devider.dart';
import '../../../global/widgets/show_custom_snackbar.dart';
import '../../settings/theme/controller/theme_controller.dart';
import '../../widgets/customised_scaffold.dart';
import '../components/socal_card.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _projectTypeController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _shortDesController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _projectTypeController.dispose();
    _mobileNumberController.dispose();
    _shortDesController.dispose();
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeCon) {
        return GetBuilder<ContactMeController>(
          builder: (contactMeCon) {
            return CustomisedScaffold(
              mainScaffold: Container(
                constraints: BoxConstraints(maxWidth: 1110),
                // padding: EdgeInsets.symmetric(horizontal: 80 * 2),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SectionTitle(
                      subTitle: "Feel free to contact me for any queries you have.",
                      title: "Contact Me",
                      color: Color(0xFFFFB100),
                    ),
                    sizedBoxH(100),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        padding: const EdgeInsets.all(kDefaultPadding * 3),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.3, color: const Color(0xFF0E1453)),
                          color: const Color(0x2B0F112C),
                          borderRadius: BorderRadius.circular(15),
                          // boxShadow: [kDefaultShadow],
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ///
                              /// * ==@ SOCIAL MEDIA ==
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: SocalCard(
                                      color: themeCon.getDarkLightBackGroundColor(context),
                                      iconUrl: contactMeCon.otherContatData?.info?.socialMedia?.linkedin?.icon,
                                      iconSrc: "assets/images/linkedin.png",
                                      name: 'LinkedIn',
                                      press: () {
                                        _launchInBrowser(
                                          contactMeCon.otherContatData?.info?.socialMedia?.linkedin?.url ??
                                              "https://www.linkedin.com/in/muktabd-info",
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 24),
                                  Expanded(
                                    child: SocalCard(
                                      color: themeCon.getDarkLightBackGroundColor(context),
                                      iconUrl: contactMeCon.otherContatData?.info?.socialMedia?.github?.icon,
                                      iconSrc: "assets/images/github.png",
                                      name: 'Github',
                                      press: () {
                                        _launchInBrowser(
                                          contactMeCon.otherContatData?.info?.socialMedia?.github?.url ??
                                              "https://github.com/muktabd",
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 24),
                                  Expanded(
                                    child: SocalCard(
                                      color: themeCon.getDarkLightBackGroundColor(context),
                                      iconUrl: contactMeCon.otherContatData?.info?.socialMedia?.stackoverflow?.icon,
                                      iconSrc: "assets/images/stack-overflow.png",
                                      name: 'StackOverflow',
                                      press: () {
                                        _launchInBrowser(
                                          contactMeCon.otherContatData?.info?.socialMedia?.stackoverflow?.url ??
                                              "https://stackoverflow.com/users/8496352/mukta",
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: kDefaultPadding),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: SocalCard(
                                      color: themeCon.getDarkLightBackGroundColor(context),
                                      iconUrl: contactMeCon.otherContatData?.info?.socialMedia?.whatsapp?.icon,
                                      iconSrc: "assets/images/whatsapp.png",
                                      name: 'Whatsapp',
                                      press: () {
                                        _launchInBrowser(
                                          contactMeCon.otherContatData?.info?.socialMedia?.whatsapp?.url ??
                                              "wa.me/+60187832241",
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 24),
                                  Expanded(
                                    child: SocalCard(
                                      color: themeCon.getDarkLightBackGroundColor(context),
                                      iconUrl: contactMeCon.otherContatData?.info?.socialMedia?.xtwitter?.icon,
                                      iconSrc: "assets/images/twitter.png",
                                      name: 'Twitter',
                                      press: () {
                                        _launchInBrowser(
                                          contactMeCon.otherContatData?.info?.socialMedia?.xtwitter?.url ??
                                              "https://twitter.com/muktabdinfo",
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 24),
                                  Expanded(
                                    child: SocalCard(
                                      color: themeCon.getDarkLightBackGroundColor(context),
                                      iconUrl: contactMeCon.otherContatData?.info?.socialMedia?.facebook?.icon,
                                      iconSrc: "assets/images/facebook.png",
                                      name: 'Facebook',
                                      press: () {
                                        _launchInBrowser(
                                          contactMeCon.otherContatData?.info?.socialMedia?.facebook?.url ??
                                              "https://www.facebook.com/mukta.2003",
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: kDefaultPadding * 2),

                              /// * ==@ CONTACT ME FORM ==
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      labelText: 'Your name',
                                      hintText: 'Jhon Doe',
                                      controller: _nameController,
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
                                      controller: _emailController,
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
                                      controller: _mobileNumberController,
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
                                      controller: _projectTypeController,
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
                                controller: _shortDesController,
                                labelText: "Description",
                                hintText: "Write briefly about your project..",
                                keyboardType: TextInputType.text,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\S[a-zA-Z./ ]*$')),
                                  LengthLimitingTextInputFormatter(1200),
                                ],
                              ),
                              const SizedBox(height: kDefaultPadding * 2),

                              ///*
                              Center(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  child: CustomButtonWidget(
                                    width: MediaQuery.of(context).size.width * 0.8,
                                    height: 50,
                                    color: Colors.red,
                                    image: "assets/images/contact_icon.png",
                                    text: "Contact Me",
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        log("validated");
                                        final result = await contactMeCon.contactMe(
                                          reqData: ReqContactMe(
                                            name: _nameController.text.toString(),
                                            email: _emailController.text.toString(),
                                            phone: _mobileNumberController.text.toString(),
                                            projectType: _projectTypeController.text.toString(),
                                            projectDes: _shortDesController.text.toString(),
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    sizedBoxH(30),

                    ///
                    CustomDottedDivider(color: Colors.red),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 10),
                      child: Text('Copyrights © 2019-2024 reserved by Mukta'),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
