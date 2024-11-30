import 'package:flutter/material.dart';
import 'package:flutter_portfolio/global/widgets/global_text.dart';
import 'package:flutter_portfolio/screens/widgets/customised_scaffold.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../components/constants.dart';
import '../../../components/section_title.dart';
import '../../../global/widgets/custom_devider.dart';
import '../../media_query/media_query_grid_count.dart';
import '../../media_query/media_query_padding.dart';
import '../../widgets/bottom_copyrights.dart';
import '../controller/blog_post_controller.dart';
import '../../../global/methods/sizebox_widget.dart';

class MyBlogsScreen extends StatefulWidget {
  const MyBlogsScreen({super.key});

  @override
  State<MyBlogsScreen> createState() => _MyBlogsScreenState();
}

class _MyBlogsScreenState extends State<MyBlogsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogPostController>(
      builder: (getAllPostController) {
        return CustomisedScaffold(
          mainScaffold: Container(
            constraints: BoxConstraints(maxWidth: 1110),
            padding: ScreenPadding.getPadding(context),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionTitle(
                  title: "My Blogs",
                  subTitle: "Read out my articles. It might help you.",
                  color: Color(0xFFFFB100),
                ),
                const SizedBox(height: kDefaultPadding * 1.5),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    // color: Colors.red,
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: GridItemCount.getItemCount(context),
                        childAspectRatio: 5 / 2.2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: const Color(0x153D4C82),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Colors.white24,
                            ),
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
                                      "https://images.unsplash.com/photo-1672858780267-7deecb33b131?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      GlobalText(
                                        str: "WeHealth",
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFB100),
                                      ),
                                      sizedBoxH(5.0),
                                      GlobalText(str: '20 sep 2024, 12:30 PM', fontSize: 10),
                                      sizedBoxH(10),
                                      Flexible(
                                        child: GlobalText(
                                          str:
                                              "WeHealth is a simple and convenient popular health monitoring App. WeHealth is a simple and convenient popular health monitoring App. WeHealth is a simple and convenient popular health monitoring App.",
                                          maxLines: 5,
                                          softwrap: true,
                                          textAlign: TextAlign.justify,
                                          fontSize: 16,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      ///
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: TextButton(
                                          child: GlobalText(
                                            str: "READ MORE",
                                            color: Colors.red,
                                          ),
                                          onPressed: () {
                                            //
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                sizedBoxH(10),
                BottomCopyRights(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class HoverChip extends StatefulWidget {
  const HoverChip({
    super.key,
    required this.onTap,
    required this.label,
  });
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
        label: GlobalText(
          str: widget.label,
        ),
      ),
    );
  }
}
