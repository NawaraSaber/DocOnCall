import 'package:doc_on_call/consts/theme_data.dart';
import 'package:doc_on_call/providers/cart_provider.dart';
import 'package:doc_on_call/providers/product_provider.dart';
import 'package:doc_on_call/providers/theme_provider.dart';
import 'package:doc_on_call/providers/viewed_prod_provider.dart';
import 'package:doc_on_call/providers/wishlist_provider.dart';
import 'package:doc_on_call/screens/appioment/cancel_page.dart';
import 'package:doc_on_call/screens/appioment/canceled_schedule.dart';
import 'package:doc_on_call/screens/appioment/compelet_schedule.dart';
import 'package:doc_on_call/screens/auth/forgot_password.dart';
import 'package:doc_on_call/screens/auth/login.dart';
import 'package:doc_on_call/screens/auth/otp.dart';
import 'package:doc_on_call/screens/auth/regisrter.dart';
import 'package:doc_on_call/screens/contact_us.dart';
import 'package:doc_on_call/screens/home_screen.dart';
import 'package:doc_on_call/screens/inner_screens/histroy.dart';
import 'package:doc_on_call/screens/inner_screens/product_details.dart';
import 'package:doc_on_call/screens/inner_screens/wishlist.dart';
import 'package:doc_on_call/screens/search_screen.dart';
import 'package:doc_on_call/screens/specialization.dart';
import 'package:doc_on_call/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ViewedProdProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'DocOnCall',
          theme: Styles.themeData(
              isDarktheme: themeProvider.getIsDarkTheme, context: context),
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
          routes: {
            ProductDetails.routName: (context) => const ProductDetails(),
            WishlistScreen.routName: (context) => const WishlistScreen(),
            HistroyScreen.routName: (context) => const HistroyScreen(),
            RegisterScreen.routName: (context) => const RegisterScreen(),
            LoginScreen.routName: (context) => const LoginScreen(),
            HomeScreen.routName: (context) =>  HomeScreen(),
            ForgotPasswordScreen.routeName: (context) =>
                const ForgotPasswordScreen(),
            SearchScreen.routeName: (context) => const SearchScreen(),
            CompeletSchedule.routeName: (context) => const CompeletSchedule(),
            CanceledSchedule.routeName: (context) => const CanceledSchedule(),
            SpecializationsScreen.routName: (context) =>
                const SpecializationsScreen(),
            OTPScreen.routName: (context) => const OTPScreen(),
            ContactUs.routName: (context) => const ContactUs(),
            CancelPage.routeName: (context) => const CancelPage(),
          },

        );
      }),
    );
  }
}
