import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class CategoryModel {
  String name;
  String id;
  String image;
  Color color;

  CategoryModel(this.name, this.id, this.image, this.color);


 static List<CategoryModel> getCategories ()
  {
    return [
      CategoryModel("Sports".tr(), "sports", "assets/images/sports.png", Colors.red),
      CategoryModel("Business".tr(), "business", "assets/images/bussines.png", Color(0xffCF7E48)),
      CategoryModel("Entertainment".tr(), "entertainment", "assets/images/environment.png", Color(0xff4882CF)),
      CategoryModel("General".tr(), "general", "assets/images/Politics.png", Color(0xff003E90)),
      CategoryModel("Health".tr(), "health", "assets/images/health.png", Color(0xffED1E79)),
      CategoryModel("Science".tr(), "science", "assets/images/science.png", Colors.yellow),
      CategoryModel("Technology".tr(), "technology", "assets/images/environment.png", Colors.lightGreen)
    ];

  }
}
