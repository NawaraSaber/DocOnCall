//import 'package:dream_house_users_ar/services/assets_manager.dart';

import 'package:flutter/material.dart';

class ProductModel with ChangeNotifier {
  final String 
      specialtiesID,
      productTitle,
      productPrice,
      productCategory,
      productDescription,
      productImage,
      productQuantity;

  ProductModel({
      required this.specialtiesID,
      required this.productTitle,
      required this.productPrice,
      required this.productCategory,
      required this.productDescription,
      required this.productImage,
      required this.productQuantity
      });

}