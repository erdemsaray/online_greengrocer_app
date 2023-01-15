import 'package:flutter/material.dart';

import '../constants/project_variables.dart';
import 'favoritepage_view.dart';
import 'homepage_view.dart';
import 'listpage_view.dart';
import 'searchpage_view.dart';

class TabViewPage extends StatefulWidget {
  const TabViewPage({super.key});

  @override
  State<TabViewPage> createState() => _TabViewPageState();
}

class _TabViewPageState extends State<TabViewPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
            unselectedLabelColor: ColorItems.colorTextGrey,
            padding: EdgeInsets.all(10),
            labelColor: ColorItems.colorOrangeYellow,
            controller: _tabController,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: ColorItems.colorOrangeYellow, width: 4.0),
              insets: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 56.0),
            ),
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.home,
                  size: 32,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  size: 32,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  size: 32,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.list_alt,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: const Text(
            'Shopping app',
            //style: ProjectStyles.titleStyle,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [HomePageView(), SearchPageView(), FavoritePageView(), ListPageView()],
        ),
      ),
    );
  }
}
