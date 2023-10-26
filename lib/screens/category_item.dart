import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/category__model.dart';

class CategortItem extends StatelessWidget {
  CategoryModel categoryModel;

  CategortItem(this.categoryModel, {super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),

        decoration: BoxDecoration(
          color: categoryModel.color,
          borderRadius: BorderRadius.only(topRight: Radius.circular(18) ,topLeft: Radius.circular(18))
        ),
      child: Column(
        children: [
          Expanded(child: Image.asset(categoryModel.image)),
          Text(categoryModel.name,style: TextStyle(color: Colors.white),),
        ],
      ),
      ),
    );
  }
}
