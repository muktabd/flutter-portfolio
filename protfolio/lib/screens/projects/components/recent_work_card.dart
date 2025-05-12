import 'package:flutter/material.dart';
import 'package:portfolio/global/widgets/global_text.dart';

import '../../../components/constants.dart';
import '../../../global/methods/custom_url_launcher.dart';
import '../model/project_data_model.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    super.key,
    required this.image,
    required this.platfromList,
    required this.name,
    required this.desc,
  });

  final String image;
  final List<PlatformName> platfromList;
  final String name;
  final String desc;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: const Color(0x4A3E3C7E),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.asset(widget.image)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GlobalText(str: widget.name, fontSize: 25.0, color: Colors.deepOrange, fontWeight: FontWeight.bold),
                    const SizedBox(height: kDefaultPadding / 2),
                    GlobalText(str: widget.desc),
                    const SizedBox(height: kDefaultPadding),

                    Row(
                      children:
                          widget.platfromList.map((platform) {
                            return Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: HoverChip(label: platform.name, onTap: () => launchUrlNow(platform.url)),
                                ),
                                SizedBox(width: 10.0),
                              ],
                            );
                          }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HoverChip extends StatefulWidget {
  const HoverChip({super.key, required this.onTap, required this.label});
  final VoidCallback onTap;
  final String label;

  @override
  State<HoverChip> createState() => _HoverChipState();
}

class _HoverChipState extends State<HoverChip> {
  bool _onHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (event) {
        setState(() {
          _onHover = event;
        });
      },
      onTap: widget.onTap,
      child: Chip(
        backgroundColor: Colors.blueGrey,
        elevation: _onHover ? 10 : 0,
        label: GlobalText(str: widget.label, color: Colors.white),
      ),
    );
  }
}
