import 'package:doc_on_call/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

class CancelPage extends StatefulWidget {
  static const routeName = '/CancelPage';
  const CancelPage({super.key});

  @override
  State<CancelPage> createState() => _CancelPageState();
}

class _CancelPageState extends State<CancelPage> { 
  String groupValue = "yes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: const Text(
          "Cancel Booking",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SubtitleTextWidget(
              label: "Please select the reason for cancellations:",
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                children: [
                  Radio(
                    value: "Schedule Change",
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                      const Text("Schedule Change");
                    },
                  ),
                  Radio(
                    value: "Weather conditions",
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                      const Text("Weather conditions");
                    },
                  ),
                  Radio(
                    value: "Unexpected Work",
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                      const Text("Unexpected Work");
                    },
                  ),
                  Radio(
                    value: "Childcare Issue",
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                      const Text("Childcare Issue");
                    },
                  ),
                  Radio(
                    value: "Travel Delays",
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                      const Text("Travel Delays");
                    },
                  ),
                  Radio(
                    value: "Other",
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                      const Text("Other");
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(),
                  TextFormField(
                    key: const ValueKey("Description"),
                    minLines: 5,
                    maxLines: 10,
                    maxLength: 1000,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: const InputDecoration(
                      hintText: "Enter Your reason",
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
