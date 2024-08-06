import 'package:chat_app/screens/feed/feed_screen_top.dart';
import 'package:chat_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: cLightBg,
          height: Get.height / 2,
        ),
        Column(
          children: [
            const FeedScreenTop(),
            Container(color: cLightBg, height: 10),
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    primary: false,
                    child: Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
