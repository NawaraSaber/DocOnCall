import 'package:doc_on_call/screens/home_screen.dart';
import 'package:doc_on_call/widgets/app_name_text.dart';
import 'package:doc_on_call/widgets/subtitle_text.dart';
import 'package:doc_on_call/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPScreen extends StatelessWidget {
  static const routName = '/OTPScreen';
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 60.0,
                  ),
                  const AppNameTextWidgt(
                    fontSize: 30,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: TitleTextWidget(
                      lablel: "Verification code",
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const SubtitleTextWidget(
                    label: "We have sent the code verification to your email",
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Form(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1) {},
                            decoration: const InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin2) {},
                            decoration: const InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin3) {},
                            decoration: const InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin4) {},
                            decoration: const InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomeScreen.routName);
                        },
                        child: const Text("Confirm"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Resend"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
