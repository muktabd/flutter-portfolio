import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter_portfolio/components/default_button.dart';
import 'package:flutter_portfolio/components/my_outline_button.dart';
import 'package:flutter_portfolio/components/constants.dart';

import '../../../global/constants/images.dart';
import '../../../global/widgets/custom_devider.dart';
import '../../../global/widgets/custom_toast.dart';
import '../../settings/theme/controller/theme_controller.dart';
import '../../widgets/bottom_copyrights.dart';

class MyResumeScreen extends StatefulWidget {
  const MyResumeScreen({super.key});

  @override
  State<MyResumeScreen> createState() => _MyResumeScreenState();
}

class _MyResumeScreenState extends State<MyResumeScreen> {
  late pw.Document pdf;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    generatePDF().then((generatedPdf) {
      setState(() {
        pdf = generatedPdf;
      });
    });
  }

  Future<void> savePDF() async {
    final Uint8List bytes = await pdf.save();
    await Printing.sharePdf(bytes: bytes, filename: 'Resume_Abdullah_Iba_Mukta.pdf');
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeController) {
        return Scaffold(
          backgroundColor: themeController.getDarkLightBackGroundColor(context),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// * LEFT-SIDE MENU
                      Container(
                        color: Colors.amber,
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: ClipOval(
                                child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(Images.uiux),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text('SKILL HIGHLIGHTS', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                            BulletWidget(text: 'Mobile App Development'),
                            BulletWidget(text: 'Back-End: NodeJS, PHP Laravel'),
                            BulletWidget(text: 'Firebase, SQL, AWS'),
                            BulletWidget(text: 'Programming Languages: Java'),
                          ],
                        ),
                      ),

                      // Middle Details View
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'ABDULLAH IBNA MUKTA',
                                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                        ),
                                        Text('Cross Platform Application Developer with Flutter'),
                                        Text('Android, iOS, Web and Windows'),
                                        SizedBox(height: 20),
                                        Text('SUMMARY', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                        Text(
                                          'I am working on mobile and web app development. For development, I am using Flutter, a single code base framework.',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    color: Colors.red,
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Social Media',
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                        Text('Cross Platform Application Developer with Flutter'),
                                        Text('Facebook '),
                                        Text('GitHub'),
                                        Text('GitHub'),
                                        Text('GitHub'),
                                        Text('GitHub'),
                                        Text('Android, iOS, Web and Windows'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Container(
                                color: Colors.green,
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'COMPANY DETAILS WILL BE HERE',
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                    ),
                                    Text('Cross Platform Application Developer with Flutter'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text('Android, iOS, Web and Windows'),
                                    Text(
                                        'Android, iOS, Web and Windows Android, iOS, Web and Windows Android, iOS, Web and Windows Android, iOS, Web and WindowsAndroid, iOS, Web and Windows Android, iOS, Web and Windows Android, iOS, Web and Windows Android, iOS, Web and WindowsAndroid, iOS, Web and Windows Android, iOS, Web and Windows Android, iOS, Web and Windows'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  ///
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
                      MyOutlineButton(
                        imageSrc: "assets/images/hand.png",
                        text: "View PDF",
                        press: () async {
                          setState(() => isLoading = true);
                          await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
                          setState(() => isLoading = false);
                        },
                      ),
                      const SizedBox(width: kDefaultPadding * 1.5),
                      DefaultButton(
                        imageSrc: "assets/images/download.png",
                        text: "Download CV",
                        press: savePDF,
                      ),
                    ],
                  ),
                  ///
                  ///
                    BottomCopyRights(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// * ==@ PDF DOCUMENT ==
  Future<pw.Document> generatePDF() async {
    final pdf = pw.Document();
    final image = await imageFromAssetBundle('assets/icons/ui.png');
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.all(20),
        build: (pw.Context context) => pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Container(
              width: 150,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Center(
                    child: pw.ClipOval(
                      child: pw.Container(
                        height: 100,
                        width: 100,
                        child: pw.Image(image, fit: pw.BoxFit.cover),
                      ),
                    ),
                  ),
                  pw.SizedBox(height: 20),
                  pw.Text('SKILL HIGHLIGHTS', style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
                  pw.Bullet(text: 'Mobile App Development'),
                  pw.Bullet(text: 'Back-End: NodeJS, PHP Laravel'),
                  pw.Bullet(text: 'Firebase, SQL, AWS'),
                  pw.Bullet(text: 'Programming Languages: Java'),
                ],
              ),
            ),
            pw.SizedBox(width: 20),
            pw.Expanded(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text('ABDULLAH IBNA MUKTA', style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
                  pw.Text('Cross Platform Application Developer with Flutter'),
                  pw.SizedBox(height: 10),
                  pw.Row(
                    children: [
                      pw.Text('+60187832241'),
                      pw.SizedBox(width: 10),
                      pw.Text('mukta@graduate.utm.my'),
                    ],
                  ),
                  pw.SizedBox(height: 20),
                  pw.Text('SUMMARY', style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
                  pw.Text(
                    'I am working on mobile and web app development. For development, I am using Flutter, a single code base framework.',
                    style: pw.TextStyle(fontSize: 12),
                  ),
                  pw.SizedBox(height: 20),
                  pw.Text('EXPERIENCE', style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
                  pw.Container(
                    padding: const pw.EdgeInsets.all(10),
                    decoration: pw.BoxDecoration(
                      border: pw.Border.all(color: PdfColors.grey),
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('Mobile App Developer',
                            style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
                        pw.Text('Biz Trading & Total Cad Solution SDN. BHD (02/2021 - 02/2022)'),
                        pw.Bullet(text: 'Trainer of Flutter development'),
                        pw.Bullet(text: 'Lead mobile/web development'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    return pdf;
  }
}

class BulletWidget extends StatelessWidget {
  final String? text;

  final TextAlign textAlign;

  final TextStyle? style;

  final EdgeInsetsGeometry margin;

  final EdgeInsetsGeometry? padding;

  final EdgeInsetsGeometry bulletMargin;

  final double bulletSize;

  final BoxShape bulletShape;

  final PdfColor bulletColor;

  const BulletWidget({
    super.key,
    this.text,
    this.textAlign = TextAlign.left,
    this.style,
    this.margin = const EdgeInsets.only(bottom: 2.0 * PdfPageFormat.mm),
    this.padding,
    this.bulletSize = 2.0 * PdfPageFormat.mm,
    this.bulletMargin = const EdgeInsets.only(
      top: 1.5 * PdfPageFormat.mm,
      left: 5.0 * PdfPageFormat.mm,
      right: 2.0 * PdfPageFormat.mm,
    ),
    this.bulletShape = BoxShape.circle,
    this.bulletColor = PdfColors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: bulletSize,
            height: bulletSize,
            margin: bulletMargin,
            // decoration: BoxDecoration(color: bulletColor, shape: bulletShape),
          ),
          Expanded(
            child: text == null
                ? SizedBox()
                : Text(
                    text!,
                    textAlign: textAlign,
                    // style: Theme.of(context).bulletStyle.merge(style),
                  ),
          )
        ],
      ),
    );
  }
}
