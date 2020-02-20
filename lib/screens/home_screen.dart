import 'package:flutter/material.dart';
import 'package:super_socialize_flutter/data/data.dart';
import 'package:super_socialize_flutter/widget/custom_drawer.dart';
import 'package:super_socialize_flutter/widget/following_users.dart';
import 'package:super_socialize_flutter/widget/post_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);//view por fraction will take the space between items
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Super Social',
          style: TextStyle(fontSize: 24),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          indicatorWeight: 4.0,
          unselectedLabelStyle: TextStyle(fontSize: 18),
          tabs: <Widget>[
            Tab(
              text: 'Trending',
            ),
            Tab(
              text: 'Latest',
            ),
          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: <Widget>[
          FollowingUsers(),
          PostCarousel(
            pageController: _pageController,
            title: 'Post',
            posts : posts
          ),
        ],
      ),
    );
  }
}
