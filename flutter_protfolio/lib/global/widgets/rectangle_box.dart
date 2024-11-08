import 'package:flutter/material.dart';


class RectAngleBox extends StatelessWidget {
  const RectAngleBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffFFFFFF),
          width: 0.5,
        ),
      ),
      // height: getProportionateScreenHeight(19),
      // width: getProportionateScreenWidth(48),
      height: 19,
      width: 48,
    );
  }
}