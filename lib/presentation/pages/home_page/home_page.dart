import 'package:explovid/presentation/pages/home_page/five.dart';
import 'package:explovid/presentation/pages/home_page/four.dart';
import 'package:explovid/presentation/pages/home_page/one.dart';
import 'package:explovid/presentation/pages/home_page/three.dart';
import 'package:explovid/presentation/pages/home_page/two.dart';
import 'package:explovid/presentation/pages/search_page/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int getPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void whenPageChanges(int pageIndex) {
    setState(() {
      this.getPageIndex = pageIndex;
    });
  }

  void onTapChangePage(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Explovid"),
      //   backgroundColor: Colors.red[700],
      // ),
      body: PageView(
        children: [
          //Temp order za lakse testiranje
          SearchPage(),
          OnePage(),
          ThreePage(),
          FourPage(),
          FivePage(),
        ],
        controller: pageController,
        onPageChanged: (pageIndex) {
          whenPageChanges(pageIndex);
        },
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: getPageIndex,
        onTap: (pageIndex) {
          onTapChangePage(pageIndex);
        },
        activeColor: Colors.white,
        inactiveColor: Colors.blueGrey,
        backgroundColor: Colors.red[700],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.photo_camera, size: 37.0)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
