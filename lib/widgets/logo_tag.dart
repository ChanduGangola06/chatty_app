import 'package:chat_app/common/extension/image_extension.dart';
import 'package:flutter/material.dart';

class LogoTag extends StatelessWidget {
  final bool? isWhite;
  final double? width;

  const LogoTag({super.key, this.isWhite, this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        isWhite == true ? MyImages.logoWhite : MyImages.logoBlack,
        height: (width ?? 100) * 0.1975683891,
        width: width);
  }
}
