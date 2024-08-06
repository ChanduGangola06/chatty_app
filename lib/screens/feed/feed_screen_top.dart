import 'package:chat_app/common/extension/image_extension.dart';
import 'package:chat_app/utils/constants.dart';
import 'package:chat_app/widgets/logo_tag.dart';
import 'package:flutter/material.dart';

class FeedScreenTop extends StatelessWidget {
  const FeedScreenTop({super.key});

  @override
  Widget build(BuildContext context) {
    double imageSize = 25;
    return Container(
      color: cBG,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                MyImages.bell,
                width: imageSize,
                height: imageSize,
              ),
            ),
            const LogoTag(),
            GestureDetector(
              onTap: () {
                // Get.to(() => SearchScreen());
              },
              child: Image.asset(
                MyImages.search,
                width: imageSize,
                height: imageSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
