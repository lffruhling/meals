import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meals/components/category_item.dart';
import 'package:meals/data/dummy_data.dart';

class CategoryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
      ),
      children: DUMMY_CATEGORIES.map((category){
        return CategoryItem(
          category: category,
        );
      }).toList(),
    );
  }
}
