import 'package:explovid/application/movie_search/movie_search_bloc.dart';
import 'package:explovid/presentation/pages/home_page/five.dart';
import 'package:explovid/presentation/pages/home_page/four.dart';
import 'package:explovid/presentation/pages/home_page/one.dart';
import 'package:explovid/presentation/pages/home_page/three.dart';
import 'package:explovid/presentation/pages/home_page/two.dart';
import 'package:explovid/presentation/pages/search_page/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<GlobalKey<NavigatorState>> tabNavKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];
  CupertinoTabController _tabController;
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = CupertinoTabController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !await tabNavKeys[_tabController.index].currentState.maybePop();
      },
      child: CupertinoTabScaffold(
        controller: _tabController,
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.photo_camera, size: 37.0)),
            BottomNavigationBarItem(icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(icon: Icon(Icons.person)),
          ],
          onTap: (index) {
            if (currentIndex == index) {
              switch (index) {
                case 0:
                  BlocProvider.of<MovieSearchBloc>(context, listen: false).add(MovieSearchEvent.deleteSearchPressed());
                  tabNavKeys[0].currentState.popUntil((route) => route.isFirst);
                  break;
                case 1:
                  tabNavKeys[1].currentState.popUntil((route) => route.isFirst);
                  break;
                case 2:
                  tabNavKeys[2].currentState.popUntil((route) => route.isFirst);
                  break;
                case 3:
                  tabNavKeys[3].currentState.popUntil((route) => route.isFirst);
                  break;
                case 4:
                  tabNavKeys[4].currentState.popUntil((route) => route.isFirst);
                  break;
                default:
              }
            }
            currentIndex = index;
          },
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[0],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: SearchPage(),
                  );
                },
              );
            case 1:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[1],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: OnePage(),
                  );
                },
              );
            case 2:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[2],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: ThreePage(),
                  );
                },
              );
            case 3:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[3],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: FourPage(),
                  );
                },
              );
            case 4:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[4],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: FivePage(),
                  );
                },
              );
            default:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[0],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: SearchPage(),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
