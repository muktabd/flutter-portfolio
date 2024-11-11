import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class ExperienceTimelineWidget extends StatelessWidget {
  const ExperienceTimelineWidget({super.key, required this.experienceList});

  final List<WorkExperienceClass> experienceList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: FixedTimeline.tileBuilder(
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
          itemCount: experienceList.length,
          contentsBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 40),
              child: Card(
                color: const Color(0x6C000000),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        experienceList[index].position,
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        experienceList[index].companyName,
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                      ),
                      Text(
                        "Contact: ${experienceList[index].contactNumber}",
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontSize: 18.0,
                            ),
                      ),
                      Text(
                        experienceList[index].toFrom,
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        experienceList[index].companyType,
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      RolesListCreator(roles: experienceList[index].roles),
                    ],
                  ),
                ),
              ),
            );
          },
          indicatorBuilder: (_, index) {
            return Indicator.widget(
              position: 0,
              size: 64,
              child: CircleAvatar(
                radius: 32,
                foregroundImage: AssetImage(experienceList[index].companyImage),
              ),
            );
          },
          connectorBuilder: (_, index, __) => const SolidLineConnector(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class RolesListCreator extends StatelessWidget {
  const RolesListCreator({
    super.key,
    required this.roles,
  });

  final List<String> roles;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          indicatorBuilder: (_, index) => DotIndicator(
            color: Colors.grey.shade800,
          ),
          contentsBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: roles
                  .map(
                    (roleText) => Text(
                      roleText,
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 14,
                      ),
                    ),
                  )
                  .toList()[index],
            );
          },
          itemExtentBuilder: (_, index) => 25.0,
          itemCount: roles.length,
        ),
      ),
    );
  }
}

class WorkExperienceClass {
  const WorkExperienceClass({
    required this.id,
    required this.position,
    required this.companyName,
    required this.contactNumber,
    required this.toFrom,
    required this.companyType,
    required this.roles,
    required this.companyImage,
  });

  final int id;
  final String position;
  final String companyName;
  final String contactNumber;
  final String toFrom;
  final String companyType;
  final String companyImage;
  final List<String> roles;
}
