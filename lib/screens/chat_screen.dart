import 'package:doc_on_call/widgets/title_text.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: TitleTextWidget(lablel: "Chat Screen"),
      ),
    );
  }
}