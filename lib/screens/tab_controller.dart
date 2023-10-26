import 'package:flutter/material.dart';
import 'package:news/screens/source_item.dart';
import 'package:news/shared/network/remote/api_manager.dart';

import '../models/SourcesResponse.dart';
import 'news_card_item.dart';

class TabControlerWedgit extends StatefulWidget {
  String search ;
  List<Sources> sourse;


  TabControlerWedgit(this.sourse,this.search);

  @override
  State<TabControlerWedgit> createState() => _TabControlerWedgitState(sourse);
}

class _TabControlerWedgitState extends State<TabControlerWedgit> {
  List<Sources> sourse;

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sourse.length,
          child: TabBar(
            isScrollable: true,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            indicatorColor: Colors.transparent,
            tabs: widget.sourse
                .map((sourc) => Tab(
                    child: SourceItem(
                        sourc, widget.sourse.indexOf(sourc) == selectedIndex)))
                .toList(),
          ),
        ),
        FutureBuilder(
          future: ApiManager.getNews(sourse[selectedIndex].id ?? "",q: widget.search),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text("Somethig went wrong"));
            }
            var newsList = snapshot.data?.articles ?? [];
            return Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return NewsCardItem(newsList[index]);
                },
                itemCount: newsList.length,
              ),
            );
          },
        )
      ],
    );
  }

  _TabControlerWedgitState(this.sourse);
}
