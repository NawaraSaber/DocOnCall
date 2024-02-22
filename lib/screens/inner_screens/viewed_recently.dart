import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/viewed_prod_provider.dart';
import '../../services/assets_manager.dart';
import '../../widgets/empty_bag.dart';
import '../../widgets/products/product_widget.dart';
import '../../widgets/title_text.dart';

class ViewedRecentlyScreen extends StatelessWidget {
  static const routName = '/ViewedRecentlyScreen';
  const ViewedRecentlyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final viewedProvider = Provider.of<ViewedProdProvider>(context);
    return viewedProvider.getViewedProdItems.isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
                imagePath: AssetsManager.recent,
                title: "Your Viewed Recently is empty",
                subtitle:
                    "Looks like you didn't add anything yet to your viewed recently , Go ahead and start shopping",
                buttonText: "Booking Now"),
          )
        : Scaffold(
            appBar: AppBar(
              title: TitleTextWidget(lablel:" Viewed recently(${viewedProvider.getViewedProdItems.length})"),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.doctorLogo),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete_forever_rounded))
              ],
            ),
            body: DynamicHeightGridView(
              itemCount: viewedProvider.getViewedProdItems.length,
              builder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProductWidget(
                    productId: viewedProvider.getViewedProdItems.values.toList()[index].productId,
                  ),
                );
              }),
              crossAxisCount: 2,
            ),
          );
  }
}
