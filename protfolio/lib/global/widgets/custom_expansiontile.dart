import 'package:flutter/material.dart';
import 'package:portfolio/screens/settings/theme/controller/theme_controller.dart';
import 'package:get/get.dart';
import '../constants/color_resources.dart';
import '../methods/sizebox_widget.dart';
import '../styles/font_style/montserrat.dart';

class CustomExpansionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final List subList;
  final List<Widget> onTap;
  const CustomExpansionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subList,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        dividerColor: Colors.transparent,
        shadowColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        disabledColor: Colors.transparent,
      ),
      child: GetBuilder<ThemeController>(
        builder: (themeCon) {
          return ExpansionTile(
            tilePadding: const EdgeInsets.only(left: 0, right: 10),
            childrenPadding: const EdgeInsets.only(left: 0, right: 0),
            backgroundColor: Colors.transparent,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                sizedBoxW(10),
                Icon(icon, size: 25, color: themeCon.getWhiteBlackColor(context)),
                sizedBoxW(15),
                Expanded(
                  child: SizedBox(
                    child: Text(
                      title,
                      style: montserratMedium.copyWith(color: themeCon.getWhiteBlackColor(context)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            trailing: Icon(Icons.keyboard_arrow_down, color: themeCon.getWhiteBlackColor(context)),
            children:
                subList.asMap().entries.map((e) {
                  return SubList(
                    title: e.value,
                    ctx: context,
                    themeCon: themeCon,
                    onTap: () {
                      switch (e.key) {
                        case 0:
                          Get.to(() => onTap[0]);
                          break;
                        case 1:
                          Get.to(() => onTap[1]);
                          break;
                        case 2:
                          Get.to(() => onTap[2]);
                          break;
                        case 3:
                          Get.to(() => onTap[3]);
                          break;
                        case 4:
                          Get.to(() => onTap[4]);
                          break;
                        case 5:
                          Get.to(() => onTap[5]);
                          break;
                        case 6:
                          Get.to(() => onTap[6]);
                          break;
                        case 7:
                          Get.to(() => onTap[7]);
                          break;
                        case 8:
                          Get.to(() => onTap[8]);
                          break;
                      }
                    },
                  );
                }).toList(),
          );
        },
      ),
    );
  }
}

class SubList extends StatelessWidget {
  final String title;
  final Function() onTap;
  final BuildContext ctx;
  final ThemeController themeCon;
  const SubList({super.key, required this.title, required this.onTap, required this.ctx, required this.themeCon});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        shadowColor: ColorRes.grey,
        focusColor: ColorRes.grey,
        hoverColor: ColorRes.grey,
        // highlightColor: ColorRes.orangeNormalOpa1,
        highlightColor: Colors.transparent,
        disabledColor: ColorRes.grey,
      ),
      child: ListTile(
        onTap: onTap,
        dense: true,
        visualDensity: const VisualDensity(vertical: -4),
        focusColor: ColorRes.grey,
        hoverColor: ColorRes.grey,
        // contentPadding: EdgeInsets.only(top: 0),
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Icon(Icons.radio_button_checked, size: 12, color: themeCon.getWhiteBlackColor(ctx)),
              sizedBoxW(10),
              Flexible(
                child: SizedBox(
                  child: Text(
                    title,
                    style: montserratMedium12.copyWith(color: themeCon.getWhiteBlackColor(ctx)),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRowTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onTap;
  final ThemeController themeCon;

  const CustomRowTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.themeCon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: ColorRes.grey,
      hoverColor: ColorRes.grey,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 25),
          sizedBoxW(12),
          Text(title, style: montserratMedium.copyWith(color: themeCon.getWhiteBlackColor(context))),
        ],
      ),
    );
  }
}
