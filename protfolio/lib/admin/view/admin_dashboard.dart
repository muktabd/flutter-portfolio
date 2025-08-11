import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/screens/widgets/custom_appbar.dart';
import '../widgets/sidebar_widget.dart';
import '/global/widgets/custom_devider.dart';
import '/global/widgets/global_text.dart';

import '../controller/admin_controller.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Dashboard",
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
            log("isExpanded ?? $isExpanded");
          },
          icon: Icon(Icons.menu),
        ),
      ),
      body: GetBuilder<AdminController>(
        builder: (adminCon) {
          // final size = MediaQuery.of(context).size;

          return Row(
            children: [
              /// 🟦 Sidebar - scrollable independently
              SideBarWidget(isExpanded: isExpanded),

              /// Spacer between sidebar & content
              const SizedBox(width: 10.0),

              /// 🟨 Main Content - scrollable independently
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 150.0,
                          child: Card(
                            child: Container(
                              height: 150.0,
                              width: 150.0,
                              padding: const EdgeInsets.all(25.0),
                              child: GlobalText(
                                str: "Total Request : ${adminCon.askingToContact?.total}",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),

                        Container(
                          color: Colors.white10,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(12.0),
                            itemCount: adminCon.askingToContact?.request?.length ?? 0,
                            itemBuilder: (BuildContext context, int index) {
                              final data = adminCon.askingToContact?.request?[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GlobalText(str: "Name  : ${data?.name}"),
                                  GlobalText(str: "Email : ${data?.email}"),
                                  GlobalText(str: "Phone : ${data?.phone}"),
                                  const SizedBox(height: 20.0),
                                  GlobalText(str: "Project Details:"),
                                  GlobalText(str: "Project Type : ${data?.projectType}"),
                                  GlobalText(str: "Project Brief : ${data?.projectBrief}"),
                                  CustomDivider(),
                                  const SizedBox(height: 10.0),
                                ],
                              );
                            },
                          ),
                        ),

                        GlobalText(str: "Bottom content"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
