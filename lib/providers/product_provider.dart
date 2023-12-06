import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> get getProduct {
    return _products;
  }

  ProductModel? findByProdId(String productId) {
    if (_products.where((element) => element.productID == productId).isEmpty) {
      return null;
    }
    return _products.firstWhere((element) => element.productID == productId);
  }
  

  List<ProductModel> findByCategory({required String ctgName}) {
    List<ProductModel> ctgList = _products
        .where((element) => element.productCategory
            .toLowerCase()
            .contains(ctgName.toLowerCase()))
        .toList();
        return ctgList;
  }
  List<ProductModel> searchQuery({required String searchText , required List<ProductModel> passedList}) {
    List<ProductModel> searchList = passedList
        .where((element) => element.productTitle
            .toLowerCase()
            .contains(searchText.toLowerCase()))
        .toList();
        return searchList;
  }

  final List<ProductModel> _products = [
    //phones

    ProductModel(
      productID: "Snap on smile",
      productTitle: "Snap on smile",
      productPrice: "1500",
      productCategory: "Snap on smile",
      productDescription: "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),

    ProductModel(
      productID: "Clear aligners",
      productTitle: "Clear aligners",
      productPrice: "1200",
      productCategory: "Clear aligners",
      productDescription: " Clear aligner can help with :\n Crowded teeth, Teeth spacing, Teeth protrusion, Open bite, Deep bite \n\nFor more information and details, kindly send us a message or call us on (01018860333)",
      productImage:
          "https://th.bing.com/th/id/OIP.-rISOJlB4Fue2pBKFwMTOAHaEA?pid=ImgDet&rs=1",
      productQuantity: "10",
    ),
  ];
}
