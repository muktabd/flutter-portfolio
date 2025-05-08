import 'package:flutter/material.dart';

import '../../global/widgets/custom_devider.dart';

class BottomCopyRights extends StatelessWidget {
  const BottomCopyRights({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///
        CustomDottedDivider(color: Colors.red),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 10),
          child: Text(
            'Copyrights ©2019-2025 reserved by Mukta\nBuild with Flutter',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
