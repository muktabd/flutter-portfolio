import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../../../widgets/bottom_copyrights.dart';
import '../../data/work_exp_data.dart';
import '../components/card_title_widget.dart';

class WorkExpWebView extends StatelessWidget {
  const WorkExpWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardTitleWidget(
              title: "Work Experience",
              subTitle: "The Companies I have worked with",
            ),

            ///
            SizedBox(height: 50.0),
            FixedTimeline.tileBuilder(
              theme: TimelineThemeData(
                nodePosition: 0,
                color: const Color(0xFFF01414),
                indicatorTheme: const IndicatorThemeData(
                  position: 0,
                  size: 20.0,
                ),
                connectorTheme: const ConnectorThemeData(
                  thickness: 2.5,
                ),
              ),
              builder: TimelineTileBuilder.connected(
                connectionDirection: ConnectionDirection.before,
                itemCount: workData.length,
                contentsBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 0.0, bottom: 40),
                    child: Card(
                      color: const Color(0x14000000),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GlobalText(
                                  str: workData[index].position,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w700,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                                  decoration: BoxDecoration(
                                    color: workData[index].color,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: GlobalText(
                                    str: workData[index].toFrom,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                GlobalText(
                                  str: workData[index].companyName,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.deepOrange,
                                  fontSize: 20,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.open_in_new,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ],
                            ),
                            GlobalText(
                              str: "Contact: ${workData[index].contactNumber}",
                              fontSize: 15.0,
                            ),
                            GlobalText(
                              str: "",
                            ),
                            GlobalText(
                              str: workData[index].companyType,
                              fontSize: 18.0,
                            ),
                            // RolesListCreator(roles: workData[index].roles),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: FixedTimeline.tileBuilder(
                                theme: TimelineTheme.of(context).copyWith(
                                  nodePosition: 0,
                                  connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
                                        thickness: 1.0,
                                      ),
                                  indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
                                        size: 10.0,
                                        position: 0.5,
                                        color: Colors.black,
                                      ),
                                ),
                                builder: TimelineTileBuilder(
                                  itemExtentBuilder: (context, i) => 25.0,
                                  itemCount: workData[index].roles.length,
                                  indicatorBuilder: (context, i) => DotIndicator(
                                    color: Colors.grey.shade800,
                                  ),
                                  contentsBuilder: (context, i) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: workData[index]
                                          .roles
                                          .map(
                                            (roleText) => GlobalText(
                                              str: roleText,
                                              fontSize: 18.0,
                                              color: Colors.grey,
                                            ),
                                          )
                                          .toList()[i],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                indicatorBuilder: (context, index) {
                  return DotIndicator(
                    color: workData[index].color,
                    child: Icon(
                      Icons.check,
                      // color: workData[index].color,
                      size: 12.0,
                    ),
                  );
                },
                connectorBuilder: (context, index, __) => const SolidLineConnector(
                  color: Colors.grey,
                ),
              ),
            ),
            BottomCopyRights(),
          ],
        ),
      ),
    );
  }
}
