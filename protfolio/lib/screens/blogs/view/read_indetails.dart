import 'package:flutter/material.dart';
import 'package:portfolio/global/methods/sizebox_widget.dart';
import 'package:portfolio/global/widgets/global_text.dart';
import 'package:portfolio/screens/widgets/customised_scaffold.dart';

import '../model/blog_data_model.dart';

class BloginDetailsScreen extends StatelessWidget {
  final BlogDataModel blogDetails;
  const BloginDetailsScreen({super.key, required this.blogDetails});

  @override
  Widget build(BuildContext context) {
    return CustomisedScaffold(
      webScaffold: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
          constraints: BoxConstraints(maxWidth: 1640.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  child: Image.network(
                    blogDetails.image ??
                        "https://images.unsplash.com/photo-1672858780267-7deecb33b131?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              sizedBoxH(10.0),
              GlobalText(str: "last update at: ${blogDetails.updatedAt}"),

              sizedBoxH(30.0),
              GlobalText(
                str: "${blogDetails.title}",
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
              sizedBoxH(30.0),
              GlobalText(str: "${blogDetails.description}", isHtml: true),
            ],
          ),
        ),
      ),
      tabletScaffold: Card(),
      mobileScaffold: Card(),
    );
  }
}
