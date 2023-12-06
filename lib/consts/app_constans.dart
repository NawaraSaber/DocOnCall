import 'package:doc_on_call/models/categories_model.dart';

import '../services/assets_manager.dart';

class AppConstans {
  static String productImageUrl = AssetsManager.doctorLogo;
  static List<String> bannersImages = [
    AssetsManager.doctor1,
    AssetsManager.doctor2,
    AssetsManager.doctor3,
  ];
  static List<CategoryModel> categoriesList = [
    CategoryModel(
        id: AssetsManager.pediatrics,
        image: AssetsManager.pediatrics,
        name: "Pediatrics"),
    CategoryModel(
        id: AssetsManager.tooth,
        image: AssetsManager.tooth,
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
