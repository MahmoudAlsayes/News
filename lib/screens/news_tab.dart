import 'package:flutter/material.dart';
import 'package:news/screens/tab_controller.dart';

import '../shared/network/remote/api_manager.dart';

class NewsTab extends StatelessWidget {
String catId ;
String search ;

NewsTab(this.catId,this.search);

  @override
  Widget build(BuildContext context) {
    return
    FutureBuilder(
      future: ApiManager.getSources(catId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text("Somethig went wrong"));
        }
        var sources = snapshot.data?.sources ?? [];
        return TabControlerWedgit(sources,search) ;
      },
    );
  }
}
