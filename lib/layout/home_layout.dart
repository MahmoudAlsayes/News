import 'package:flutter/material.dart';
import 'package:news/models/category__model.dart';
import 'package:news/screens/categories_tab.dart';
import 'package:news/screens/news_tab.dart';
import 'package:news/screens/tab_controller.dart';
import 'package:news/shared/network/remote/api_manager.dart';

import '../screens/drawer.dart';

class HomeLayout extends StatefulWidget {
  static const String RouteName = "home";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> catpries = CategoryModel.getCategories();
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("assets/images/pattern.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        drawer: DrawerTab(onDrawerClicked),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.green,
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          title: Text("News"),
        ),
        body: categoryModel==null? CategoriesTab(catpries,onCategoryClicked):
         NewsTab(categoryModel!.id),
      ),
    );
  }

  CategoryModel? categoryModel = null ;

  onCategoryClicked (category){
    categoryModel =category;
    setState(() {

    });


  }
  onDrawerClicked (id){
    
    if (id==DrawerTab.CAT_ID){
      categoryModel=null;
    }else if (id==DrawerTab.SET_ID)
      {
        
      }
   setState(() {
     
   }); 
    Navigator.pop(context);
  }
  
}
