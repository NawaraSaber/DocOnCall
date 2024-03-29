import 'package:flutter/material.dart';

import '../../screens/search_screen.dart';
import '../subtitle_text.dart';

class CtgWidget extends StatelessWidget {
  const CtgWidget({
    super.key,
    required this.image,
    required this.name,
  });
  final String image, name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearchScreen.routeName, arguments: name);
      },
      child: Column(
        children: [
          Image.asset(
            image,
            height: 40,
            width: 40,
          ),
          const SizedBox(
            height: 15,
          ),
          SubtitleTextWidget(
            label: name,
            fontSize: 11,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
