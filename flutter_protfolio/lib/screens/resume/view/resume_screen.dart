import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/default_button.dart';
import 'package:flutter_portfolio/components/my_outline_button.dart';
import 'package:flutter_portfolio/components/constants.dart';
import 'package:flutter_portfolio/screens/settings/theme/controller/theme_controller.dart';
import 'package:flutter_portfolio/screens/widgets/customised_scroll_view.dart';
import 'package:get/get.dart';
import '../../../controller/url_controller/url_controller.dart';
import '../../../global/widgets/custom_toast.dart';

class MyResumeScreen extends StatefulWidget {
  const MyResumeScreen({super.key});

  @override
  State<MyResumeScreen> createState() => _MyResumeScreenState();
}

class _MyResumeScreenState extends State<MyResumeScreen> {
  static const int _initialPage = 1;
  final bool _isSampleDoc = true;

  @override
  void initState() {
    super.initState();
    // _pdfController = PdfController(
    //   document:
    //       PdfDocument.openAsset('assets/resume/resume_mukta.pdf'),
    //   initialPage: _initialPage,
    // );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UrlAndPlatformController>(builder: (urlnPlatformCon) {
      return GetBuilder<ThemeController>(builder: (themeCon) {
        return CustomisedScrolView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
                constraints: const BoxConstraints(maxWidth: 1110),
                child: Column(
                  children: [
                    Text("My\nRESUME", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                   
                    const SizedBox(height: kDefaultPadding * 3),
                    
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyOutlineButton(
                          imageSrc: "assets/images/hand.png",
                          text: "Hire Me!",
                          press: () {
                            showToast("Great!! Please contact me form!");
                          },
                        ),
                        const SizedBox(width: kDefaultPadding * 1.5),
                        DefaultButton(
                          imageSrc: "assets/images/download.png",
                          text: "Download CV",
                          press: () {
                            // _pdfController!.previousPage(
                            //   curve: Curves.ease,
                            //   duration: const Duration(milliseconds: 100),
                            // );
                          },
                        ),
                      ],
                    ),

                    //
                  ],
                ),
              ),
            ),
          ],
        );
      },);
    },);
  }
}
