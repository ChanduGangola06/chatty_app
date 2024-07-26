import 'package:chat_app/common/extension/font_extension.dart';
import 'package:chat_app/utils/constants.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const CommonButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          decoration: ShapeDecoration(
            color: cPrimary,
            shape: const SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius.all(SmoothRadius(
                    cornerRadius: 12, cornerSmoothing: cornerSmoothing))),
            shadows: kMyBoxShadow,
          ),
          padding: const EdgeInsets.symmetric(vertical: 18),
          margin: const EdgeInsets.only(bottom: 15, right: 10, left: 10),
          alignment: Alignment.center,
          width: double.infinity,
          child: Text(
            text.tr,
            style: MyTextStyle.gilroySemiBold(size: 18),
          ),
        ),
      ),
    );
  }
}

class CommonSheetButton extends StatelessWidget {
  final Color? color;
  final String title;
  final VoidCallback onTap;

  const CommonSheetButton(
      {super.key, this.color, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 30),
        decoration: ShapeDecoration(
            shape: const SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius.all(SmoothRadius(
                    cornerRadius: 12, cornerSmoothing: cornerSmoothing))),
            color: color ?? cWhite),
        height: 50,
        width: double.infinity,
        child: Text(
          title.tr,
          style: MyTextStyle.gilroySemiBold(),
        ),
      ),
    );
  }
}

var kMyBoxShadow = [
  BoxShadow(
    color: cPrimary.withOpacity(0.5),
    blurRadius: 10,
    offset: const Offset(0, 4), // Shadow position
  )
];
