import 'package:chat_app/common/extension/font_extension.dart';
import 'package:chat_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailButton extends StatelessWidget {
  final String text;
  final bool isDisable;
  final Function() onTap;

  const EmailButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.isDisable});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (!isDisable) {
            onTap();
          }
        },
        child: Container(
          decoration: BoxDecoration(
            color: isDisable ? cLightText.withOpacity(0.4) : cPrimary,
            borderRadius: BorderRadius.circular(12),
            // boxShadow: kMyBoxShadow,
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
          margin: const EdgeInsets.only(bottom: 15, top: 15),
          alignment: Alignment.center,
          width: double.infinity,
          child: Text(
            text.tr,
            style: MyTextStyle.gilroySemiBold(),
          ),
        ));
  }
}
