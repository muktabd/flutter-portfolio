import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/global/widgets/custom_listtile.dart';

import '../../domain/local/preferences/local_storage.dart';

class SideBarWidget extends StatefulWidget {
  final bool isExpanded;
  const SideBarWidget({super.key, required this.isExpanded});

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  List<String> sideBarMenuItem = ["Dashboard", "Request to Contact", "Logout"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.isExpanded ? 250 : 80,
      child: Container(
        color: Colors.blueGrey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            CustomListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: widget.isExpanded ? 16 : 8),
              leadingWidget: Icon(Icons.dashboard, color: Colors.white),
              title: widget.isExpanded ? 'Dashboard' : null,
              horizontalTitleGap: 0,
              onTap: () {},
            ),
            ...sideBarMenuItem.map((item) {
              return CustomListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: widget.isExpanded ? 16 : 8),
                leadingWidget: Icon(Icons.circle, size: 16, color: Colors.white),
                title: widget.isExpanded ? item : null,
                horizontalTitleGap: 0,
                onTap: () async {
                  log("now press ?? $item");
                  if (item == "Logout") {
                    await Get.find<LocalStorage>().clearLocalStorage();
                    Get.toNamed("/");
                  }
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
