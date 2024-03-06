import 'package:flutter/material.dart';

import '../index.dart';

class SubtitleComponent extends StatelessWidget {
  final String subtitle;
  final double widthLine;
  const SubtitleComponent({super.key, required this.subtitle, required this.widthLine});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(TextSpan(text: '#', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: textPrimaryColor), children: [TextSpan(text: subtitle, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white))])),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 2,
          width: widthLine,
          color: textPrimaryColor,
        )
      ],
    );
  }
}
