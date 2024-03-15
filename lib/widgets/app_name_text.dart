import 'package:doc_on_call/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameTextWidgt extends StatelessWidget {
  const AppNameTextWidgt({super.key, this.fontSize = 22});
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 3),
      baseColor: Colors.purple,
      highlightColor:  Colors.blue,
      child: TitleTextWidget(
        lablel: "DocOnCall",
        fontSize: fontSize,
      ),
    );
  }
}
