import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/service.dart';
import '../../components/constants.dart';
import '../../models/skills.dart';

class SkillsCard extends StatefulWidget {
  const SkillsCard({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  _SkillsCardState createState() => _SkillsCardState();
}

class _SkillsCardState extends State<SkillsCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 265,
        width: 265,
        decoration: BoxDecoration(
          color: services[widget.index!].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: const EdgeInsets.all(kDefaultPadding),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: const Offset(0, 20),
                      blurRadius: 30,
                      color: Colors.black.withOpacity(0.1),
                    ),
                ],
              ),
              child: Image.asset(
                skillServices[widget.index!].image!,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Text(
              skills[widget.index!].title!,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
