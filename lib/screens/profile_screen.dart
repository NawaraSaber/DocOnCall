import 'package:doc_on_call/screens/auth/login.dart';
import 'package:doc_on_call/screens/inner_screens/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../services/assets_manager.dart';
import '../services/my_app_methods.dart';
import '../widgets/app_name_text.dart';
import '../widgets/subtitle_text.dart';
import '../widgets/title_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const AppNameTextWidgt(),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.doctorLogo),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Visibility(
            visible: false,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: TitleTextWidget(
                  lablel: "Please Login to have ultimate access"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).cardColor,
                    border: Border.all(
                        color: Theme.of(context).colorScheme.background,
                        width: 3),
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(lablel: "Zeyad Medhat"),
                    SubtitleTextWidget(label: "Zeyadmedhat543@gmail.com"),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleTextWidget(lablel: "General"),
                CustomListTitle(
                  imagePath: AssetsManager.medicine,
                  text: "All Order",
                  function: () async {
                    // await Navigator.pushNamed(
                    //     context, OrdersScreenFree.routeName);
                  },
                ),
                CustomListTitle(
                  imagePath: AssetsManager.capsules,
                  text: "Pharmacy & Labs",
                  function: () async {
                    // await Navigator.pushNamed(context, WishlistScreen.routName);
                  },
                ),
                CustomListTitle(
                  imagePath: AssetsManager.history,
                  text: "History",
                  function: () async {
                    // await Navigator.pushNamed(context, WishlistScreen.routName);
                  },
                ),
                CustomListTitle(
                  imagePath: AssetsManager.notifications,
                  text: "Notifications",
                  function: () async {
                    // await Navigator.pushNamed(
                    //     context, ViewedRecentlyScreen.routName);
                  },
                ),
                CustomListTitle(
                  imagePath: AssetsManager.address,
                  text: "Address",
                  function: () {},
                ),
                CustomListTitle(
                  imagePath: AssetsManager.about,
                  text: "About Us",
                  function: () async {
                    await Navigator.pushNamed(context, WishlistScreen.routName);
                  },
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 7,
                ),
                const TitleTextWidget(lablel: "Settings"),
                const SizedBox(
                  height: 7,
                ),
                SwitchListTile(
                  secondary: Image.asset(
                    AssetsManager.theme,
                    height: 30,
                  ),
                  title: Text(themeProvider.getIsDarkTheme
                      ? "Dark mode"
                      : "Light mode"),
                  value: themeProvider.getIsDarkTheme,
                  onChanged: (value) {
                    themeProvider.setDarkTheme(themeValue: value);
                  },
                ),
                const Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
              icon: const Icon(Icons.login),
              label: const Text("Login"),
              onPressed: () async {
                await Navigator.pushNamed(context, LoginScreen.routName);
                // ignore: use_build_context_synchronously
                await MyAppMethods.showErrorORWarningDialog(
                    context: context,
                    fct: () {},
                    subtitle: 'Are you sure ?',
                    isError: true);
              },
            ),
          ),
        ]),
      ),
    );
  }
}

class CustomListTitle extends StatelessWidget {
  const CustomListTitle(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.function});
  final String imagePath, text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Image.asset(
        imagePath,
        height: 30,
      ),
      title: SubtitleTextWidget(label: text),
      trailing: const Icon(IconlyLight.arrowRight2),
    );
  }
}
