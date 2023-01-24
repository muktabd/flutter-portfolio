
import 'package:flutter/material.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
     
      decoration:  const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 0.5,
          image: AssetImage("assets/images/background.jpg"),
        ),
      ),
      child: SizedBox(
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            /* const Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ), */
            const Positioned(
              bottom: 0,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}
