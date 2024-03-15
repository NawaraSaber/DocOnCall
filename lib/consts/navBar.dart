// ignore: file_names
import 'package:doc_on_call/providers/theme_provider.dart';
import 'package:doc_on_call/screens/contact_us.dart';
import 'package:doc_on_call/screens/inner_screens/histroy.dart';
import 'package:doc_on_call/screens/inner_screens/wishlist.dart';
import 'package:doc_on_call/screens/profile_screen.dart';
import 'package:doc_on_call/services/assets_manager.dart';
import 'package:doc_on_call/services/my_app_methods.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Zeyad Medhat"),
            accountEmail: const Text("zyadmedhat534@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg',
                ),
              ),
            ),
          ),
          CustomListTitle(
            imagePath:AssetsManager.chatbot,
            text:  "Chat Bot",
            function: (){},
          ),
          CustomListTitle(
            imagePath: AssetsManager.history,
            text: "History",
            function: () async {
              await Navigator.pushNamed(context, HistroyScreen.routName);
            },
          ),
          CustomListTitle(
                  imagePath: AssetsManager.wishlist,
                  text: "Favorite Doctor",
                  function: () async {
                    await Navigator.pushNamed(context, WishlistScreen.routName);
                  },
                ),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.notifications,size: 33),
              title: const Text("Notifications"),
              onTap: () {},
              trailing: ClipOval(
                child: Container(
                  color: Colors.red,
                  width: 23,
                  height: 23,
                  child: const Center(
                    child: Text(
                      "5",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              )),
          SwitchListTile(
            secondary: Image.asset(
              AssetsManager.theme,
              height: 30,
            ),
            title:
                Text(themeProvider.getIsDarkTheme ? "Dark mode" : "Light mode"),
            value: themeProvider.getIsDarkTheme,
            onChanged: (value) {
              themeProvider.setDarkTheme(themeValue: value);
            },
          ),
          const Divider(),
          CustomListTitle(
            imagePath:AssetsManager.livechat,
            text:  "Contact Us",
            function: (){
              Navigator.pushNamed(context, ContactUs.routName);
            },
          ),
          const Divider(),
          const SizedBox(
            height: 30,
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
              icon: const Icon(Icons.logout_sharp),
              label: const Text("Logout"),
              onPressed: () async {
                await MyAppMethods.showErrorORWarningDialog(
                    context: context,
                    fct: () {},
                    subtitle: 'Are you sure ?',
                    isError: true);
              },
            ),
          ),
        ],
      ),
    );
  }
}
