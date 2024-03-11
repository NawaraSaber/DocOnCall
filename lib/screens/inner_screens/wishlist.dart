import 'package:doc_on_call/widgets/app_name_text.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/wishlist_provider.dart';
import '../../services/assets_manager.dart';
import '../../services/my_app_methods.dart';
import '../../widgets/empty_bag.dart';
import '../../widgets/products/product_widget.dart';
import '../../widgets/title_text.dart';

class WishlistScreen extends StatelessWidget {
  static const routName = '/WishlistScreen';
  const WishlistScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final wishlistProvider = Provider.of<WishlistProvider>(context);
    return wishlistProvider.getWishlistItems.isEmpty
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: const AppNameTextWidgt(),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: EmptyBagWidget(
                  imagePath: AssetsManager.emptySearch,
                  title: "Your Wishlist page is Empty!",
                  subtitle: "Seems like you don't have any wishes here!",
                  buttonText: "Make a wish now"),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: TitleTextWidget(
                  lablel:
                      "Wishlist (${wishlistProvider.getWishlistItems.length})"),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.doctorLogo),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      MyAppMethods.showErrorORWarningDialog(
                          isError: false,
                          context: context,
                          subtitle: "Remove Items",
                          fct: () {
                            wishlistProvider.clearLocalWishlist();
                          });
                    },
                    icon: const Icon(Icons.delete_forever_rounded))
              ],
            ),
            body: DynamicHeightGridView(
              itemCount: wishlistProvider.getWishlistItems.length,
              builder: ((context, index) {
                return ProductWidget(
                  productId: wishlistProvider.getWishlistItems.values
                      .toList()[index]
                      .productId,
                );
              }),
              crossAxisCount: 2,
            ),
          );
  }
}
