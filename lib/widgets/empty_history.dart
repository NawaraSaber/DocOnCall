import 'package:doc_on_call/widgets/subtitle_text.dart';
import 'package:doc_on_call/widgets/title_text.dart';
import 'package:flutter/material.dart';

class EmptyHistroy extends StatelessWidget {
  const EmptyHistroy(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle,
      required this.buttonText});
  final String imagePath, title, subtitle, buttonText;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              imagePath,
              height: size.height * 0.30,
              width: double.infinity,
            ),
            const SizedBox(
              height: 20,
            ),
            const TitleTextWidget(
              lablel: "WhoOops!",
              fontSize: 30,
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            const SubtitleTextWidget(
              label: "Your History is Empty!",
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SubtitleTextWidget(
                label: subtitle,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
              onPressed: () {
                // Navigator.pushNamed(context, SearchScreen.routeName);
              },
              child: Text(
                buttonText,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
