import 'package:flutter/material.dart';

class SelectPackage extends StatefulWidget {
  static const routeName = '/SelectPackage';
  const SelectPackage({super.key});

  @override
  State<SelectPackage> createState() => _SelectPackageState();
}

class _SelectPackageState extends State<SelectPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("SelectPackage")),
    );
  }
}
