import 'package:flutter/material.dart';
import 'package:news/screens/category_item.dart';

import '../models/category__model.dart';

class CategoriesTab extends StatelessWidget {
  List<CategoryModel> categories;
  Function onClick ;


  CategoriesTab(this.categories, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Pick your category of interest"),
        Expanded(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
            children:
                categories.map((e) => InkWell(
                    onTap: () {
                      onClick(e);
                    },
                    child: CategortItem(e)),).toList(),
          ),
        ),
      ],
    );
  }
}
