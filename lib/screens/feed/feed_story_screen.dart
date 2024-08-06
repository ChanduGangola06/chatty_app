import 'package:chat_app/utils/constants.dart';
import 'package:flutter/material.dart';

class FeedStoryScreen extends StatelessWidget {
  const FeedStoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cBG,
      height: 100,
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        primary: true,
        child: Row(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          child: ClipOval(),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
