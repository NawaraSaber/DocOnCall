import 'package:flutter/material.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:provider/provider.dart';
import '../models/product_model.dart';
import '../providers/product_provider.dart';
import '../services/assets_manager.dart';
import '../widgets/products/product_widget.dart';
import '../widgets/title_text.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = '/SearchScreen';
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchTextController;

  @override
  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }

  List<ProductModel> productListSearch = [];

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    String? passedCategory =
        ModalRoute.of(context)!.settings.arguments as String?;

    final List<ProductModel> productList = passedCategory == null
        ? productProvider.getProduct
        : productProvider.findByCategory(ctgName: passedCategory);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TitleTextWidget(
            lablel: passedCategory ?? "Search",
            fontSize: 25,
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AssetsManager.doctorLogo),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                TextField(
                  controller: searchTextController,
                  decoration: InputDecoration(
                    hintText: "Search",
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          searchTextController.clear();
                          FocusScope.of(context).unfocus();
                        });
                      },
                      child: const Icon(
                        Icons.clear,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    // setState(() {
                    //   productListSearch = productProvider.searchQuery(
                    //       searchText: searchTextController.text);
                    // });
                  },
                  onSubmitted: (value) {
                    setState(() {
                      productListSearch = productProvider.searchQuery(
                          searchText: searchTextController.text , passedList: productList);
                    });
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                if (searchTextController.text.isNotEmpty &&
                    productListSearch.isEmpty) ...[
                  const Center(
                      child: TitleTextWidget(
                    lablel: "No result found",
                    fontSize: 25,
                  )),
                ],
                Container(
                  padding: const EdgeInsets.all(10),
                  child: DynamicHeightGridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: searchTextController.text.isNotEmpty
                        ? productListSearch.length
                        : productList.length,
                    builder: ((context, index) {
                      return ProductWidget(
                        productId: searchTextController.text.isNotEmpty
                            ? productListSearch[index].specialtiesID
                            : productList[index].specialtiesID,
                      );
                    }),
                    crossAxisCount: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
