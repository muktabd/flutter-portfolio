import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/widgets/custom_devider.dart';

import '../widgets/customised_scaffold.dart';

class ThoughtsScreen extends StatefulWidget {
  const ThoughtsScreen({super.key});

  @override
  State<ThoughtsScreen> createState() => _ThoughtsScreenState();
}

class _ThoughtsScreenState extends State<ThoughtsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomisedScaffold(
      mainScaffold: Column(
        children: [
          CustomDottedDivider(color: Colors.red),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Copyrights © 2019-2020 reserved by Mukta'),
          ),
        ],
      ),
    );
  }
}
