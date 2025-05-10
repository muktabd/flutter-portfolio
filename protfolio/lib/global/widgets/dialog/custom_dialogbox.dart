import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../styles/font_style/montserrat.dart';
import '../button/primary_button.dart';

class CustomDialog extends StatefulWidget {
  final String? title;
  final String? subTitle;
  final void Function() onPressed;

  const CustomDialog({
    super.key,
    this.title,
    this.subTitle,
    required this.onPressed,
  });

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(8),
      backgroundColor: const Color(0xFF1F2D49),
      content: SizedBox(
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title ?? '',
              style: montserratSemiBold18.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 15),
            Text(
              widget.subTitle ?? '',
              style: montserratMedium12.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            SizedBox(
            width: 180,
              child: CustomButtonWidget(
                text: "okay".tr,
                onPressed: widget.onPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
