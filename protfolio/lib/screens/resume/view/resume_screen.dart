// Replace this inside your _mainContent

import 'package:flutter/material.dart';
import 'package:portfolio/global/widgets/global_text.dart';
import 'package:particles_network/particles_network.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../../experiences/data/work_exp_data.dart';
import '../../widgets/custom_appbar.dart';

class MyResumeScreen extends StatelessWidget {
  const MyResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ""),
      body: Stack(
        children: [
          ParticleNetwork(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GlobalText(str: "ABDULLAH IBNA MUKTA", fontSize: 24.0),
                GlobalText(str: "Full Stack Development", fontSize: 16.0),
                SizedBox(height: 50.0),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 3,
                      child: FixedTimeline.tileBuilder(
                        theme: TimelineThemeData(
                          nodePosition: 0,
                          color: const Color(0xFFF01414),
                          indicatorTheme: const IndicatorThemeData(position: 0, size: 20.0),
                          connectorTheme: const ConnectorThemeData(thickness: 2.5),
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
                                            child: GlobalText(str: workData[index].toFrom),
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
                                            icon: Icon(Icons.open_in_new, color: Colors.blueGrey),
                                          ),
                                        ],
                                      ),
                                      GlobalText(str: "Contact: ${workData[index].contactNumber}", fontSize: 15.0),
                                      GlobalText(str: ""),
                                      GlobalText(str: workData[index].companyType, fontSize: 18.0),
                                      // RolesListCreator(roles: workData[index].roles),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                                        child: FixedTimeline.tileBuilder(
                                          theme: TimelineTheme.of(context).copyWith(
                                            nodePosition: 0,
                                            connectorTheme: TimelineTheme.of(
                                              context,
                                            ).connectorTheme.copyWith(thickness: 1.0),
                                            indicatorTheme: TimelineTheme.of(
                                              context,
                                            ).indicatorTheme.copyWith(size: 10.0, position: 0.5, color: Colors.black),
                                          ),
                                          builder: TimelineTileBuilder(
                                            itemExtentBuilder: (context, i) => 25.0,
                                            itemCount: workData[index].roles.length,
                                            indicatorBuilder: (context, i) => DotIndicator(color: Colors.grey.shade800),
                                            contentsBuilder: (context, i) {
                                              return Padding(
                                                padding: const EdgeInsets.only(left: 8.0),
                                                child:
                                                    workData[index].roles
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
                          connectorBuilder: (context, index, __) => const SolidLineConnector(color: Colors.grey),
                        ),
                      ),
                    ),

                    Flexible(
                      // flex: 2,
                      child: Container(
                        height: MediaQuery.of(context).size.height,

                        color: const Color(0x399E9E9E),
                        child: Column(
                          children: [
                            Image.asset("assets/images/mukta22.png"),
                            SizedBox(height: 50.0),
                            Text("Contcat Info"),
                            Text("abdullah Ibna Mukta"),
                            Text("data"),
                            Text("data"),
                            Text("data"),
                            Text("data"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                Column(children: [Text("data")]),
                Column(children: [Text("data")]),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Flexible(
                //       flex: 3,
                //       child: Padding(
                //         padding: const EdgeInsets.all(25.0),
                //         child: SizedBox(
                //           child: FixedTimeline.tileBuilder(
                //             builder: TimelineTileBuilder.connectedFromStyle(
                //               // itemExtent: 80.0,
                //               itemCount: 5,
                //               connectionDirection: ConnectionDirection.after,
                //               oppositeContentsBuilder: (context, index) {
                //                 return Padding(
                //                   padding: const EdgeInsets.all(8.0),
                //                   child: Text('Present\n|\nMay, 2022'),
                //                 );
                //               },

                //               connectorStyleBuilder: (context, index) {
                //                 return (index == 0) ? ConnectorStyle.solidLine : ConnectorStyle.dashedLine;
                //               },
                //               indicatorStyleBuilder: (context, index) {
                //                 return index == 0 ? IndicatorStyle.dot : IndicatorStyle.outlined;
                //               },

                //               contentsBuilder: (context, index) {
                //                 return Card(
                //                   child: Padding(
                //                     padding: const EdgeInsets.all(8.0),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: [
                //                         Text('Software Engineer'),
                //                         Text('Intrinsik Technologies Sdn Bhd'),
                //                         Text('My responsibilities as a Software Developer :'),
                //                         Text(
                //                           '''Developing and maintaining the back-end web application. (Node.js)
                //             Developing and maintaining the front-end web application. (React.js)
                //             Deploying the web application to the cloud. (AWS)
                //             Leading the team to follow the scrum methodology.
                //             Working with the team lead and stakeholders to create the product backlog, sprint planning, sprint review, sprint retrospective, and sprint demo.''',
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 );
                //               },
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),

                //     ///
                //     ///
                //     Flexible(
                //       child: Container(
                //         height: MediaQuery.of(context).size.height,

                //         color: Colors.grey,
                //         child: Column(
                //           children: [Image.asset("assets/images/mukta22.png"), SizedBox(height: 50.0), Text("data")],
                //         ),
                //       ),
                //     ),
                //   ],
                // ),

                ///
              ],
            ),
          ),
        ],
      ),
    );
  }
}
