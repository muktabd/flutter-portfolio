import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/constants.dart';
import '../../../components/section_title.dart';
import '../../../global/methods/sizebox_widget.dart';
import '../../../global/widgets/global_text.dart';
import '../../widgets/customised_scaffold.dart';
import '../data/blog_data.dart';
import 'read_indetails.dart';

class AllBlogsScreen extends StatefulWidget {
  const AllBlogsScreen({super.key});

  @override
  State<AllBlogsScreen> createState() => _AllBlogsScreenState();
}

class _AllBlogsScreenState extends State<AllBlogsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomisedScaffold(
      webScaffold: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
          constraints: BoxConstraints(maxWidth: 1640.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(
                title: "All My Blogs",
                subTitle: "Read out my articles. It might help you.",
                color: Color(0xFFFFB100),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              SizedBox(
                // color: Colors.red,
                // width: MediaQuery.of(context).size.width * 0.7,
                height: 2600,
                child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: blogData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 5 / 2.2,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final blog = blogData[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0x153D4C82),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.white24),
                      ),
                      // padding: EdgeInsets.only(bottom: 10.0),
                      // height: 180,
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                width: 250,
                                // height: 250,
                                child: Image.network(
                                  blog.image ??
                                      "https://images.unsplash.com/photo-1672858780267-7deecb33b131?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GlobalText(
                                    str: blog.title ?? "",
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFB100),
                                  ),
                                  // sizedBoxH(5.0),
                                  GlobalText(
                                    str: 'Published at : 20 Sep 2024, 12:30 PM',
                                    fontSize: 12.0,
                                  ),

                                  sizedBoxH(10),
                                  Flexible(
                                    child: GlobalText(
                                      isHtml: true,
                                      str: blog.description ?? "",
                                      maxLines: 5,
                                      // maxLines: 5,
                                    ),
                                  ),

                                  //
                                  Container(),

                                  ///
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: TextButton(
                                      child: GlobalText(str: "READ MORE", color: Colors.red),
                                      onPressed: () {
                                        Get.to(() => BloginDetailsScreen(blogDetails: blog));
                                      },
                                    ),
                                  ),
                                ],

                                //
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      tabletScaffold: Card(),
      mobileScaffold: Card(),
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
        backgroundColor: Colors.red,
        elevation: _onHover ? 10 : 0,
        label: GlobalText(str: widget.label),
      ),
    );
  }
}
