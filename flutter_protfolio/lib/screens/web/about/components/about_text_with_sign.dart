import 'package:flutter/material.dart';
import '../../../../components/constants.dart';


class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About \nmy story",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
        ),
        const SizedBox(height: kDefaultPadding * 2),
      ],
    );
  }
}
