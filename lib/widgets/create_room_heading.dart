import 'package:chat_app/common/extension/font_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateRoomHeading extends StatelessWidget {
  final String title;
  final String? bracketText;

  const CreateRoomHeading({super.key, required this.title, this.bracketText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 15),
      child: Row(
        children: [
          Text(
            "${title.tr} ${bracketText ?? ""}",
            style: MyTextStyle.gilroyRegular(),
          ),
        ],
      ),
    );
  }
}
