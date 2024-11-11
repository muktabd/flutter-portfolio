import 'package:flutter/material.dart';

import '../../../../global/widgets/global_text.dart';

class SkillNameCardWidget extends StatelessWidget {
  final String name;
  const SkillNameCardWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: GlobalText(
              str: name,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
