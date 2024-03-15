import 'package:doc_on_call/services/assets_manager.dart';
import 'package:doc_on_call/widgets/title_text.dart';
import 'package:flutter/material.dart';

class SelectPackage extends StatefulWidget {
  static const routName = '/SelectPackage';
  const SelectPackage({super.key});

  @override
  State<SelectPackage> createState() => _SelectPackageState();
}

class _SelectPackageState extends State<SelectPackage> {
  @override
  Widget build(BuildContext context) {
    String selectedPackage = "none selected";
    return Scaffold(
      appBar: AppBar(
        title: const TitleTextWidget(
          lablel: "Select Package",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TitleTextWidget(
              lablel: "Select Duration",
            ),
            const SizedBox(
              height: 10,
            ),
            // const DropdownButton(
            //           hint: const Text( "Select Package"),
            //           value: _categoryValue,
            //           items: AppConstans.categoriesDropDownList,
            //           onChanged: (String? value) {
            //             setState(() {
            //               _categoryValue = value;
            //             });
            //           }),
            const SizedBox(
              height: 10,
            ),
            TitleTextWidget(
              lablel: "Select Package :$selectedPackage ",
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: RadioMenuButton(
                value: "Messaging",
                groupValue: selectedPackage,
                onChanged: (selectedValue) {
                  setState(() => selectedPackage = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TitleTextWidget(lablel: "100 EGP"),
                      const SizedBox(
                        width: 50,
                      ),
                      const TitleTextWidget(lablel: "Messaging"),
                      const SizedBox(
                        width: 65,
                      ),
                      Image.asset(
                        AssetsManager.messenger,
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: RadioMenuButton(
                value: "Voice call",
                groupValue: selectedPackage,
                onChanged: (selectedValue) {
                  setState(() => selectedPackage = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const TitleTextWidget(lablel: "150 EGP"),
                    const SizedBox(
                      width: 60,
                    ),
                    const TitleTextWidget(lablel: "Voice call"),
                    const SizedBox(
                      width: 80,
                    ),
                    Image.asset(
                      AssetsManager.voicecall,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: RadioMenuButton(
                value: "Video call",
                groupValue: selectedPackage,
                onChanged: (selectedValue) {
                  setState(() => selectedPackage = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const TitleTextWidget(lablel: "300 EGP"),
                    const SizedBox(
                      width: 60,
                    ),
                    const TitleTextWidget(lablel: "Video call"),
                    const SizedBox(
                      width: 80,
                    ),
                    Image.asset(
                      AssetsManager.videocall,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: RadioMenuButton(
                value: "Visit home",
                groupValue: selectedPackage,
                onChanged: (selectedValue) {
                  setState(() => selectedPackage = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const TitleTextWidget(lablel: "500 EGP"),
                    const SizedBox(
                      width: 60,
                    ),
                    const TitleTextWidget(lablel: "Visit home"),
                    const SizedBox(
                      width: 70,
                    ),
                    Image.asset(
                      AssetsManager.home,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: RadioMenuButton(
                value: "Visit Clinic",
                groupValue: selectedPackage,
                onChanged: (selectedValue) {
                  setState(() => selectedPackage = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const TitleTextWidget(lablel: "300 EGP"),
                    const SizedBox(
                      width: 60,
                    ),
                    const TitleTextWidget(lablel: "Visit Clinic"),
                    const SizedBox(
                      width: 70,
                    ),
                    Image.asset(
                      AssetsManager.user,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const TitleTextWidget(lablel: "Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
