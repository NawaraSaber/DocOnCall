import 'package:doc_on_call/widgets/title_text.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: TitleTextWidget(lablel: "Appioment Screen"),
      ),
    );
  }
}
