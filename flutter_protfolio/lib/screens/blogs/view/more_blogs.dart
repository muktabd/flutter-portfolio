import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/default_button.dart';

import '../../../components/constants.dart';

class AllBlogsScreen extends StatefulWidget {
  const AllBlogsScreen({Key? key}) : super(key: key);

  @override
  State<AllBlogsScreen> createState() => _AllBlogsScreenState();
}

class _AllBlogsScreenState extends State<AllBlogsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://images.pexels.com/photos/19670/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1600",
              ),
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 1110,
                      minWidth: 300,
                      maxHeight: constraints.maxHeight + 200,
                    ),
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/personal_blog.webp"), fit: BoxFit.cover),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text('Read out ny latest blogs'),
                            ),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(12),
                          sliver: SliverGrid(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) => const BlogCard(
                                image:
                                    "https://images.unsplash.com/photo-1671933800148-3d5c295e0eed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5MTh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                androidLink: "https://play.google.com/store/apps/details?id=com.foorcar.user",
                                iosLink: "",
                                name: "ForCar",
                                desc:
                                    "The first application in the Middle East that facilitates the search for spare parts.The first application in the Middle East that facilitates the search for spare parts.The first application in the Middle East that facilitates the search for spare parts.",
                              ),
                              childCount: 20,
                            ),
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 540,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 24,
                              childAspectRatio: 16 / 9,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class BlogCard extends StatefulWidget {
  const BlogCard({
    super.key,
    required this.image,
    required this.androidLink,
    required this.iosLink,
    required this.name,
    required this.desc,
  });

  final String image;
  final String androidLink;
  final String iosLink;
  final String name;
  final String desc;

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  bool isHover = false;

  launcLinkhUrl(String url) async {
/*     if (!await launchUrl(
      Uri.parse(url),
    )) {
      throw 'Could not launch $url';
    } */
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: 540,
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox.expand(
                    child: Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                )),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          widget.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      Flexible(
                        flex: 3,
                        child: Text(
                          widget.desc,
                          softWrap: true,
                          maxLines: 12,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineMedium!.copyWith(height: 1.5),
                        ),
                      ),
                      /*  const SizedBox(height: kDefaultPadding),
                      Row(
                        children: [
                          HoverChip(
                            label: "iOS",
                            onTap: () => launcLinkhUrl(widget.iosLink),
                          ),
                          const SizedBox(width: 6),
                          HoverChip(
                            label: "Android",
                            onTap: () => launcLinkhUrl(widget.androidLink),
                          ),
                        ],
                      ), */
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
