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
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          child: TabBar(
            unselectedLabelColor: ColorItems.colorTextGrey,
            padding: const EdgeInsets.all(10),
            labelColor: ColorItems.colorOrangeYellow,
            controller: _tabController,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: ColorItems.colorOrangeYellow, width: 4.0),
              insets: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 56.0),
            ),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  size: SizeItems.navigationBarIconSize,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  size: SizeItems.navigationBarIconSize,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  size: SizeItems.navigationBarIconSize,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.list_alt,
                  size: SizeItems.navigationBarIconSize,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: SizeItems.appBarIconSize,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: SizeItems.appBarIconSize,
                )),
            const SizedBox(
              width: 7,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://portal.bilardo.gov.tr/assets/pages/media/profile/profile_user.jpg",
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: 15,
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [HomePageView(), SearchPageView(), FavoritePageView(), ListPageView()],
        ),
      ),
    );
  }
}
