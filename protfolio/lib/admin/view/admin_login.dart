import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/domain/local/preferences/local_storage.dart';
import 'package:portfolio/domain/local/preferences/local_storage_keys.dart';
import 'package:portfolio/global/widgets/global_text.dart';
import 'package:portfolio/global/widgets/show_custom_snackbar.dart';
import 'package:portfolio/global/widgets/text_formfield.dart';
import 'package:portfolio/screens/widgets/custom_appbar.dart';

import '../../global/widgets/button/primary_button.dart';
import '../controller/admin_controller.dart';
import 'admin_dashboard.dart';

class AdminPanelScreen extends StatefulWidget {
  const AdminPanelScreen({super.key});

  @override
  State<AdminPanelScreen> createState() => _AdminPanelScreenState();
}

class _AdminPanelScreenState extends State<AdminPanelScreen> {
  final formkey = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();

  String initalUsername = "privateadmin";
  String initalPassword = "#ADMiN@112233";

  @override
  void initState() {
    super.initState();

    // username.text = initalUsername;
    // password.text = initalPassword;
  }

  @override
  void dispose() {
    // username.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: GlobalText(str: "Admin Login"), centerTitle: true),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              CustomTextFormField(titleText: "Username", controller: username),
              const SizedBox(height: 8.0),
              CustomTextFormField(titleText: "Password", controller: password),
              const SizedBox(height: 15.0),

              CustomButtonWidget(
                text: 'Login',
                onPressed: () async {
                  if ((username.text == initalUsername) && (password.text == initalPassword)) {
                    await Get.find<AdminController>().getContactMeRequest();
                    Get.offAll(() => AdminDashboard());
                    Get.find<LocalStorage>().setBool(key: StorageKeys.isAuthorized, value: true);
                  } else {
                    showCustomSnackBar('Username or Password did not match..');
                  }
                },
              ),

              // Expanded(child: ListView.builder(
              //   itemCount: 1,
              //   itemBuilder: (BuildContext context, int index) {
              //     return Text("data");
              //   },
              // ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
