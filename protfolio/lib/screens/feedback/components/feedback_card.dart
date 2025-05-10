import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../feedback_data.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    super.key,
    this.index,
  });

  final int? index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = const Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.only(top: kDefaultPadding * 3, left: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 420,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index!].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Transform.translate(
                offset: const Offset(0, -55),
                child: AnimatedContainer(
                  duration: duration,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 10),
                    boxShadow: [if (!isHover) kDefaultCardShadow],
                    image: DecorationImage(
                      image: AssetImage(feedbacks[widget.index!].userPic!),
                    ),
                  ),
                ),
              ),
              Text(
                feedbacks[widget.index!].review!,
                style: const TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: kDefaultPadding * 2),
              Text(
                feedbacks[widget.index!].name!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
