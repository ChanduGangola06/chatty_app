import 'package:flutter/material.dart';

const pOnBoarding = EdgeInsets.all(30);

class TopBar extends StatelessWidget {
  final String? titleStart;
  final String titleEnd;
  final String desc;

  const TopBar(
      {super.key, this.titleStart, required this.titleEnd, required this.desc});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [],
    );
  }
}
