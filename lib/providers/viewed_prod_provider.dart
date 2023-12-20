import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../models/viewed_prod_model.dart';

class ViewedProdProvider with ChangeNotifier {
  final Map<String, ViewProdModel> _vieweProdItems = {};
  Map<String, ViewProdModel> get getViewedProdItems {
    return _vieweProdItems;
  }

  bool isProductInWishlist({required String productId}) {
    return _vieweProdItems.containsKey(productId);
  }

  void addProductToHistory({required String productId}) {
    _vieweProdItems.putIfAbsent(
      productId,
      () => ViewProdModel(
        id: const Uuid().v4(),
        productId: productId,
      ),
    );

    notifyListeners();
  }

//   void clearLocalWishlist() {
//     _vieweProdItems.clear();
//     notifyListeners();
//   }
}
