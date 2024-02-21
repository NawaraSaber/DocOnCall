import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> get getProduct {
    return _products;
  }

  ProductModel? findByProdId(String productId) {
    if (_products.where((element) => element.specialtiesID == productId).isEmpty) {
      return null;
    }
    return _products.firstWhere((element) => element.specialtiesID == productId);
  }

  List<ProductModel> findByCategory({required String ctgName}) {
    List<ProductModel> ctgList = _products
        .where((element) => element.productCategory
            .toLowerCase()
            .contains(ctgName.toLowerCase()))
        .toList();
    return ctgList;
  }

  List<ProductModel> searchQuery(
      {required String searchText, required List<ProductModel> passedList}) {
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
      specialtiesID: 'Cardiologist',
      productTitle: "Mona Helmy",
      productPrice: "200 EGP",
      productCategory: "Cardiologist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://images.pexels.com/photos/5214958/pexels-photo-5214958.jpeg?auto=compress&cs=tinysrgb&w=400",
      productQuantity: "10",
    ),

    ProductModel(
      specialtiesID: 'Dentist',
      productTitle: "Gamal Farouk",
      productPrice: "150 EGP",
      productCategory: "Dentist",
      productDescription:
          " Clear aligner can help with :\n Crowded teeth, Teeth spacing, Teeth protrusion, Open bite, Deep bite \n\nFor more information and details, kindly send us a message or call us on (01018860333)",
      productImage:
          "https://images.pexels.com/photos/6303591/pexels-photo-6303591.jpeg?auto=compress&cs=tinysrgb&w=400",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Neurologist',
      productTitle: "Mohamed Ebid",
      productPrice: "300 EPG",
      productCategory: "neurologist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://images.pexels.com/photos/8460157/pexels-photo-8460157.jpeg?auto=compress&cs=tinysrgb&w=400",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Cardiologist',
      productTitle: "Abdelrahman Gamal",
      productPrice: "150 EGP",
      productCategory: "Cardiologist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://th.bing.com/th/id/OIP.t73dJxcdn6KOMs7u1RqCcQHaFc?w=249&h=183&c=7&r=0&o=5&pid=1.7",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Gynecologist',
      productTitle: "Mohamed Kamel",
      productPrice: "500 EPG",
      productCategory: "Gynecologist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Orthopedist',
      productTitle: "Asmaa Mohamed",
      productPrice: "250 EPG",
      productCategory: "Orthopedist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://images.pexels.com/photos/3714743/pexels-photo-3714743.jpeg?auto=compress&cs=tinysrgb&w=400",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Dentist',
      productTitle: "Esraa AbdelMonem",
      productPrice: "250 EPG",
      productCategory: "Dentist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'neurologist',
      productTitle: "Islam Shehata",
      productPrice: "700 EPG",
      productCategory: "neurologist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Pediatrician',
      productTitle: "Nader Mostafa",
      productPrice: "350 EPG",
      productCategory: "Pediatrician",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Orthopedist',
      productTitle: "Eman Sedky",
      productPrice: "400 EPG",
      productCategory: "Orthopedist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Internists',
      productTitle: "Nawal Mahmoud",
      productPrice: "200 EPG",
      productCategory: "Internists",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Dentist',
      productTitle: "Ahmed Attia",
      productPrice: "450 EPG",
      productCategory: "Dentist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Hepatologists',
      productTitle: "Ali Elshikh",
      productPrice: "350 EPG",
      productCategory: "Hepatologists",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Gynecologist',
      productTitle: "Khaled Abdelaziz",
      productPrice: "300 EPG",
      productCategory: "Gynecologist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Internists',
      productTitle: "Osama Mohamed",
      productPrice: "250 EPG",
      productCategory: "Internists",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Hepatologists',
      productTitle: "Tamer Salama",
      productPrice: "200 EPG",
      productCategory: "Hepatologists",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Pediatrician',
      productTitle: "Mariem Makram",
      productPrice: "250 EPG",
      productCategory: "Pediatrician",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Cardiologist',
      productTitle: "Fawzy Mohamed",
      productPrice: "350 EPG",
      productCategory: "Cardiologist",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    ProductModel(
      specialtiesID: 'Pediatrician',
      productTitle: "Tarek Nabil",
      productPrice: "300 EPG",
      productCategory: "Pediatrician",
      productDescription:
          "Snap on smile \n- it's removable and very thin. So it will be very fine on your teeth.\n- You can choose on of many shades.\n- No pain.\n- No need for adhesive (self retention) \n\n For more information and details, kindly send us a message or call us on (01018860333)",
      productImage: "https://i.ytimg.com/vi/xFpCnupnnts/maxresdefault.jpg",
      productQuantity: "10",
    ),
    
  ];
}
