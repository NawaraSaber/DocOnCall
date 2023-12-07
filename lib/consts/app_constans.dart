import 'package:doc_on_call/models/categories_model.dart';

import '../services/assets_manager.dart';

class AppConstans {
  static String productImageUrl = AssetsManager.doctorLogo;
  static List<String> bannersImages = [
    AssetsManager.doctor1,
    AssetsManager.doctor4,
    AssetsManager.doctor6,
  ];
  static List<CategoryModel> categoriesList = [
    CategoryModel(
        id: AssetsManager.pediatrics,
        image: AssetsManager.pediatrics,
        name: "Pediatrics"),
    CategoryModel(
        id: AssetsManager.dentist,
        image: AssetsManager.dentist,
        name: "Dentist"),
    CategoryModel(
        id: AssetsManager.internist,
        image: AssetsManager.internist,
        name: "Internist"),
    CategoryModel(
        id: AssetsManager.heart,
        image: AssetsManager.heart,
        name: "Cardiologist"),
    CategoryModel(
        id: AssetsManager.neurologist,
        image: AssetsManager.neurologist,
        name: "Neurologist"),
    CategoryModel(
        id: AssetsManager.dermatologist,
        image: AssetsManager.dermatologist,
        name: "Dermatologist"),
    CategoryModel(
        id: AssetsManager.liver,
        image: AssetsManager.liver,
        name: "Hepatologists"),
    CategoryModel(
        id: AssetsManager.gynecologist,
        image: AssetsManager.gynecologist,
        name: "Gynecologist"),
  ];
}
