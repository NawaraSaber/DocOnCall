import 'package:flutter/material.dart';
import '../widgets/subtitle_text.dart';
import '../widgets/title_text.dart';
import 'assets_manager.dart';

class MyAppMethods {
  static Future<void> showErrorORWarningDialog({
    required BuildContext context,
    required String subtitle,
    required Function fct,
    bool isError = true,
  }) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AssetsManager.warning,
                  height: 80,
                  width: 80,
                ),
                const SizedBox(
                  height: 16,
                ),
                SubtitleTextWidget(
                  label: subtitle,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: isError,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const SubtitleTextWidget(
                          label: "Cancel",
                          color: Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        fct();
                        Navigator.pop(context);
                      },
                      child: const SubtitleTextWidget(
                        label: "OK",
                        color: Colors.blue,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }

  static Future<void> imagePickerDialog({
    required BuildContext context,
    required Function cameraFCT,
    required Function gallaryFCT,
    required Function removeFCT, 
  }) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Center(
              child: TitleTextWidget(lablel: "Choose option"),
            ),
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                TextButton.icon(
                  onPressed: () {
                    cameraFCT();
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  icon: const Icon(Icons.camera_alt_rounded),
                  label: const Text(
                    "Camera",
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    gallaryFCT();
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  icon: const Icon(Icons.image),
                  label: const Text(
                    "Gallary",
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    removeFCT();
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text(
                    "Remove",
                  ),
                ),
              ],
            )),
          );
        });
  }
}
