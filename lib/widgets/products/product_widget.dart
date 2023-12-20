import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_iconly/flutter_iconly.dart';
import '../../providers/cart_provider.dart';
import '../../providers/product_provider.dart';
import '../../providers/viewed_prod_provider.dart';
import '../subtitle_text.dart';
import '../title_text.dart';
import 'heart_btn.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({
    super.key,
    required this.productId,
  });

  final String productId;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    // final productModelProvider = Provider.of<ProductModel>(context);
    final productProvider = Provider.of<ProductProvider>(context);
    final getCurrProduct = productProvider.findByProdId(widget.productId);
    final cartProvider = Provider.of<CartProvider>(context);
    final viewedProvider = Provider.of<ViewedProdProvider>(context);
    Size size = MediaQuery.of(context).size;

    return getCurrProduct == null
        ? const SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.all(3.0),
            child: GestureDetector(
              onTap: () async {
                viewedProvider.addProductToHistory(
                    productId: getCurrProduct.specialtiesID);
                // await Navigator.pushNamed(context, ProductDetails.routName,
                //     arguments: getCurrProduct.productID);
              },
              child: Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: FancyShimmerImage(
                        imageUrl: getCurrProduct.productImage,
                        width: double.infinity,
                        height: size.height * 0.22,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 5,
                            child: TitleTextWidget(
                              lablel: getCurrProduct.productTitle,
                              fontSize: 22,
                              maxLines: 2,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: HeartButtonWidget(
                              productId: getCurrProduct.specialtiesID,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 3,
                              child: SubtitleTextWidget(
                                label: "${getCurrProduct.productPrice} ",
                                fontSize: 22,
                              ),
                            ),
                            Flexible(
                              child: Material(
                                borderRadius: BorderRadius.circular(13.0),
                                color: Colors.lightBlue,
                                child: InkWell(
                                  splashColor: Colors.red,
                                  borderRadius: BorderRadius.circular(13.0),
                                  onTap: () {
                                    if (cartProvider.isProductInCart(
                                        productId: getCurrProduct.specialtiesID)) {
                                      return;
                                    }
                                    cartProvider.addProductToCart(
                                        productId: getCurrProduct.specialtiesID);
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const SubtitleTextWidget(
                                label: "Appioment",
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
