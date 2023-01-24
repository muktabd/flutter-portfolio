import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../components/toast.dart';
import '../../../components/constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
        child: Container(
          //padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.black54.withOpacity(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                "It's Me",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.red),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                    text: "ABDULLAH IBNA ",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        height: 1.0),
                    children: [
                      TextSpan(
                          text: "MUKTA",
                          style: TextStyle(
                            color: Colors.yellow.shade700,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),)
                    ],),
              ),
              const SizedBox(height: 15),
              RichText(
                text: const TextSpan(
                    text:
                        "A Full Stack Developer",
                    style: TextStyle(
                      color: Color(0xFFFFF200),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    
                  ),
              ),
              const SizedBox(height: 35),
              RichText(
                text: TextSpan(
                  text: "Thoughts Of Mind",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "\n“Need Some Failures to Tell Your Successful Story”",
                      style: TextStyle(
                        color: Colors.yellow.shade700,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  CustomMsg.showToast("Sorry, This section under development!!!");
                },
                child: const Text("FIND OUT MORE"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
              )
            ],
          ),
        ),
      ),
    );
  }
}