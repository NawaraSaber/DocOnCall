import 'package:doc_on_call/services/assets_manager.dart';
import 'package:doc_on_call/widgets/app_name_text.dart';
import 'package:flutter/material.dart';

class CancelPage extends StatelessWidget {
  const CancelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const AppNameTextWidgt(),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetsManager.doctorLogo,
          ),
        ),
      ),
    );
  }
}
