import 'package:doc_on_call/screens/appioment/canceled_schedule.dart';
import 'package:doc_on_call/screens/appioment/compelet_schedule.dart';
import 'package:doc_on_call/screens/appioment/upcoming_schedule.dart';
import 'package:doc_on_call/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;

  final _scheduleWidgets = [
    //UpcomingSchedule(),
    const UpComingSchedule(),

    //CompeletSchedule
    const CompeletSchedule(),

    //CanceledSchedule
    const CanceledSchedule(),
  ];

  @override
  Widget build(BuildContext context) {
    //final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          "Schedule",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0
                            ? Colors.purple
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SubtitleTextWidget(
                        label: "UpComing",
                        color:
                            _buttonIndex == 0 ? Colors.white : Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 25,
                      ),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1
                            ? Colors.purple
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SubtitleTextWidget(
                        label: "Compeleted",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color:
                            _buttonIndex == 1 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2
                            ? Colors.purple
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SubtitleTextWidget(
                        label: "Canceled",
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color:
                            _buttonIndex == 2 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            _scheduleWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
