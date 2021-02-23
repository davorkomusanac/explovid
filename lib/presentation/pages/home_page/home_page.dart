import 'package:community_material_icon/community_material_icon.dart';
import 'package:explovid/application/movie_search/movie_search_bloc.dart';
import 'package:explovid/presentation/pages/feedback_page/feedback_page.dart';
import 'package:explovid/presentation/pages/home_page/four.dart';
import 'package:explovid/presentation/pages/home_page/one.dart';
import 'package:explovid/presentation/pages/profile_page/profile_page.dart';
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
  //CurrentIndex needs to be equal to initialIndex so that an exception is not thrown
  int currentIndex = 1;

  @override
  void initState() {
    super.initState();
    //Put the Search page as the starting one? For the time being until the app is populated
    _tabController = CupertinoTabController(initialIndex: 1);
  }

  @override
  void dispose() {
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
          activeColor: Colors.tealAccent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(CommunityMaterialIcons.help)),
            BottomNavigationBarItem(icon: Icon(Icons.search)),
            BottomNavigationBarItem(icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(icon: Icon(Icons.person)),
          ],
          onTap: (index) {
            if (currentIndex == index) {
              switch (index) {
                case 0:
                  tabNavKeys[0].currentState.popUntil((route) => route.isFirst);
                  break;
                case 1:
                  tabNavKeys[1].currentState.popUntil((route) => route.isFirst);
                  break;
                case 2:
                  BlocProvider.of<MovieSearchBloc>(context, listen: false).add(MovieSearchEvent.searchPageDoublePressed());
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
                    child: OnePage(),
                  );
                },
              );
            case 1:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[1],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: FeedbackPage(),
                  );
                },
              );
            case 2:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[2],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: SearchPage(),
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
                    child: ProfilePage(),
                  );
                },
              );
            default:
              return CupertinoTabView(
                navigatorKey: tabNavKeys[0],
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: OnePage(),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
