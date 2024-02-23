import 'package:doc_on_call/consts/app_constants_all.dart';
import 'package:doc_on_call/services/assets_manager.dart';
import 'package:doc_on_call/widgets/app_name_text.dart';
import 'package:doc_on_call/widgets/products/ctg_widget.dart';
import 'package:doc_on_call/widgets/title_text.dart';
import 'package:flutter/material.dart';

class SpecializationsScreen extends StatelessWidget {
  const SpecializationsScreen({super.key});
  static const routName = '/SpecializationsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const AppNameTextWidgt(),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetsManager.doctorLogo,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: TitleTextWidget(
                lablel: "Popular specializations",
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: List.generate(
                AppConstansAll.categoriesListAll.length,
                (index) {
                  return CtgWidget(
                    image: AppConstansAll.categoriesListAll[index].image,
                    name: AppConstansAll.categoriesListAll[index].name,
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
