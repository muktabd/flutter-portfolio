import 'package:flutter/material.dart';

import '../../../global/methods/sizebox_widget.dart';
import '../../../global/widgets/global_text.dart';

class CompanyNameCard extends StatelessWidget {
  final String companyName, companyType, contactPerson, contactDuration;
  final List workFieldList;
  const CompanyNameCard({
    super.key,
    required this.companyName,
    required this.companyType,
    required this.contactPerson,
    required this.contactDuration,
    required this.workFieldList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GlobalText(
            str: 'Mobile App Developer',
            fontSize: 30,
          ),
          GlobalText(
            str: 'Biz Trading & Total Cad Solution SDN. BHD',
            fontSize: 25,
          ),
          GlobalText(
            str: 'Contact: +60 11 3979 9129',
            fontSize: 14,
          ),
          GlobalText(
            str: '02/2021 - 02/2022',
            fontSize: 12,
          ),
          GlobalText(
            str: 'Mechanical & Software Based Company',
            fontSize: 12,
          ),
          sizedBoxH(5),
          SizedBox(
            height: 120,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text("* Task ${index + 1}"),
                );
              },
            ),
          ),
          SizedBox(height: 5.0),
          GlobalText(
            str: 'For more visit website',
            fontSize: 18,
          ),
        ],
      ),
    );
  }
}
