import 'package:doc_on_call/providers/theme_provider.dart';
import 'package:doc_on_call/screens/appioment/cancel_page.dart';
import 'package:doc_on_call/widgets/subtitle_text.dart';
import 'package:doc_on_call/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

class UpComingSchedule extends StatelessWidget {
  const UpComingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleTextWidget(
            lablel: "About Doctor",
            fontSize: 18,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: themeProvider.getIsDarkTheme
                  ? const Color.fromARGB(255, 9, 3, 27)
                  : Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: TitleTextWidget(
                      lablel: "Dr: Esraa AbdelMonem",
                      fontSize: 18,
                    ),
                    subtitle: SubtitleTextWidget(
                      label: "Therapist",
                      fontSize: 16,
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage("assets/images/doc/doctor1.jpg"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            IconlyLight.calendar,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SubtitleTextWidget(
                            label: "27/12/2023",
                            fontSize: 14,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SubtitleTextWidget(
                            label: "5:15 PM",
                            fontSize: 14,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const SubtitleTextWidget(
                            label: "Confirmed",
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, CancelPage.routeName);
                        },
                        child: const SubtitleTextWidget(label: "Cancel"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.pushNamed(context, can.)
                        },
                        child: const SubtitleTextWidget(label: "Done"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TitleTextWidget(
            lablel: "About Doctor",
            fontSize: 18,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: themeProvider.getIsDarkTheme
                  ? const Color.fromARGB(255, 9, 3, 27)
                  : Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: TitleTextWidget(
                      lablel: "Dr: Essam Ahmed",
                      fontSize: 18,
                    ),
                    subtitle: SubtitleTextWidget(
                      label: "Therapist",
                      fontSize: 16,
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage("assets/images/doc/doctor2.jpg"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            IconlyLight.calendar,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SubtitleTextWidget(
                            label: "23/12/2023",
                            fontSize: 14,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SubtitleTextWidget(
                            label: "7:30 PM",
                            fontSize: 14,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const SubtitleTextWidget(
                            label: "Confirmed",
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, CancelPage.routeName);
                        },
                        child: const SubtitleTextWidget(label: "Cancel"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const SubtitleTextWidget(label: "Done"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TitleTextWidget(
            lablel: 'About Doctor',
            fontSize: 18,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: themeProvider.getIsDarkTheme
                  ? const Color.fromARGB(255, 9, 3, 27)
                  : Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: TitleTextWidget(
                      lablel: "Dr: Mohamed Ibrahim",
                      fontSize: 18,
                    ),
                    subtitle: SubtitleTextWidget(
                      label: "Therapist",
                      fontSize: 16,
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage("assets/images/doc/doctor3.jpg"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            IconlyLight.calendar,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SubtitleTextWidget(
                            label: "1/1/2024",
                            fontSize: 14,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time_filled,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SubtitleTextWidget(
                            label: "9:45 PM",
                            fontSize: 14,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const SubtitleTextWidget(
                            label: "Confirmed",
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, CancelPage.routeName);
                        },
                        child: const SubtitleTextWidget(label: "Cancel"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const SubtitleTextWidget(label: "Done"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
