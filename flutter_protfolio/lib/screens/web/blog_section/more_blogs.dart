import 'package:flutter/material.dart';

import 'blog_section.dart';

class AllBlogsScreen extends StatefulWidget {
  const AllBlogsScreen({super.key});

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
                                  image: AssetImage(
                                      "assets/images/personal_blog.webp"),
                                  fit: BoxFit.cover),
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
                                androidLink:
                                    "https://play.google.com/store/apps/details?id=com.foorcar.user",
                                iosLink: "",
                                name: "ForCar",
                                desc:
                                    "The first application in the Middle East that facilitates the search for spare parts.The first application in the Middle East that facilitates the search for spare parts.The first application in the Middle East that facilitates the search for spare parts.",
                              ),
                              childCount: 20,
                            ),
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
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
