import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/controller/contact_me_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_portfolio/components/default_button.dart';
import 'package:flutter_portfolio/components/section_title.dart';
import 'package:flutter_portfolio/components/constants.dart';

import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);
// final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: const [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SocalCard(
                  color: const Color(0xFFD9FFFC),
                  iconSrc: "assets/images/linkedin.png",
                  name: 'LinkedIn',
                  press: () {
                    _launchInBrowser("https://www.linkedin.com/in/muktabd-info/");
                  },
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: SocalCard(
                  color: const Color(0xFFE4FFC7),
                  iconSrc: "assets/images/github.png",
                  name: 'Github',
                  press: () {
                    _launchInBrowser("https://github.com/muktabd");
                  },
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: SocalCard(
                  color: const Color(0xFFE8F0F9),
                  iconSrc: "assets/images/stack-overflow.png",
                  name: 'StackOverflow',
                  press: () {
                    _launchInBrowser("https://stackoverflow.com/users/8496352/mukta");
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
                  color: const Color(0xFFD9FFFC),
                  iconSrc: "assets/images/whatsapp.png",
                  name: 'Whatsapp',
                  press: () {
                    _launchInBrowser("wa.me/+60187832241");
                  },
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: SocalCard(
                  color: const Color(0xFFE4FFC7),
                  iconSrc: "assets/images/twitter.png",
                  name: 'Twitter',
                  press: () {
                    _launchInBrowser("https://twitter.com/muktabdinfo");
                  },
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: SocalCard(
                  color: const Color(0xFFE8F0F9),
                  iconSrc: "assets/images/facebook.png",
                  name: 'Facebook',
                  press: () {
                    _launchInBrowser("https://www.facebook.com/mukta.2003");
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const ContactForm(),
        ],
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      // mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _projectTypeController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _shortDesController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _projectTypeController.dispose();
    _mobileNumberController.dispose();
    _shortDesController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactMeController>(
      builder: (contactMeController) {
        return Form(
          key: _formKey,
          child: Wrap(
            spacing: kDefaultPadding * 2.5,
            runSpacing: kDefaultPadding * 1.5,
            children: [
              SizedBox(
                width: 470,
                child: TextFormField(
                controller: _nameController,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) return "Name is required";
                    return null;
                  },
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: "Your Name",
                    hintText: "Jhon Doe",
                  ),
                ),
              ),
              SizedBox(
                width: 470,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please provide your active email";
                    }
                    if (!value.contains("@") || !value.contains(".")) {
                      return "Email is not valid";
                    }
                    return null;
                  },
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: "Email Address",
                    hintText: "name@mail.com",
                  ),
                ),
              ),
              SizedBox(
                width: 470,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _mobileNumberController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please write about your project type";
                    }
                    return null;
                  },
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: "Mobile Number",
                    hintText: "+60123456789",
                  ),
                ),
              ),
              SizedBox(
                width: 470,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _projectTypeController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please tell me your project budget";
                    }
                    return null;
                  },
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: "Project Type",
                    hintText: "Food Delivery Management",
                  ),
                ),
              ),
              SizedBox(
                // height: 300,
                // TextField by default cover the height, i tryed to fix this problem but i cant
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _shortDesController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please write shortly about your project";
                    }
                    return null;
                  },
                  maxLines: 4,
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: "Description",
                    hintText: "Write some description",
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding * 2),
              Center(
                child: FittedBox(
                  child: DefaultButton(
                    imageSrc: "assets/images/contact_icon.png",
                    text: "Contact Me!",
                    press: () {
                      if (_formKey.currentState!.validate()) {
                        log("validated");
                        contactMeController.contactMe(
                            name: _nameController.text.toString(),
                            email: _emailController.text.toString(),
                            phone: _mobileNumberController.text.toString(),
                            projectType: _projectTypeController.text.toString(),
                            projectDes: _shortDesController.text.toString(),
                            context: context);
                      } else {
                        log("validated");
                      }
                    },
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
