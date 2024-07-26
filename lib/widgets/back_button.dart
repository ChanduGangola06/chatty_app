import 'package:chat_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: const Icon(
        Icons.chevron_left_rounded,
        color: cBlack,
      ),
    );
  }
}

class XMarkButton extends StatelessWidget {
  const XMarkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: CircleAvatar(
        radius: 15,
        backgroundColor: cWhite.withOpacity(0.1),
        foregroundColor: cWhite.withOpacity(0.5),
        child: const Icon(Icons.close_rounded, size: 18),
      ),
    );
  }
}

// class VerifyIcon extends StatelessWidget {
//   final User? user;
//   final bool isPlaceholder;
//   const VerifyIcon({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
