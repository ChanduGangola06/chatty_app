import 'package:chat_app/localization/languages.dart';
import 'package:chat_app/utils/constants.dart';
import 'package:chat_app/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String text)? onChange;

  const MySearchBar({super.key, required this.controller, this.onChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          color: cLightBg,
          padding: const EdgeInsets.only(right: 15, left: 5),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: MyTextField(
                    controller: controller,
                    placeHolder: LKeys.searchHere,
                    onChange: onChange,
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
