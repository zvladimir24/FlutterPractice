import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notification/styles/app_styles.dart';
import 'package:notification/widget/CustomExplore.dart';
import 'package:notification/widget/CustomMyFeedNoPic.dart';
import 'package:notification/widget/CustomTabBar.dart';
import 'package:notification/widget/CustomMyFeedPost.dart';
import 'package:notification/widget/MyHomepageBloc/my_home_page_bloc.dart';
import 'package:notification/widget/MyHomepageBloc/my_home_page_event.dart';
import 'package:notification/widget/MyHomepageBloc/my_home_page_state.dart';

import 'pages/NotificationPage.dart';
import 'pages/SearchPage.dart';

void main() => runApp(
      BlocProvider(
        create: (context) => MyHomePageBloc(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/notifications': (context) => NotificationPage(),
        '/search': (context) => SearchPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyHomePageBloc, MyHomePageState>(
      builder: (context, state) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor:
                Colors.white, // Set the background color of the entire screen
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  floating: true,
                  snap: false,
                  elevation: 0.0,
                  expandedHeight: 50,
                  backgroundColor: Colors.white,
                  title: Text(
                    'Community',
                    style: AppStyles.bodyText3.copyWith(color: Colors.black),
                  ),
                  bottom: CustomTabBar(
                    tabTitles: ['MY FEED', 'EXPLORE'],
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<MyHomePageBloc>(context)
                              .add(NotificationTapped());
                          Navigator.pushNamed(context, '/notifications');
                        },
                        behavior: HitTestBehavior.translucent,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset(
                            'assets/icons/Notification_icon.svg',
                            color: Colors.black,
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<MyHomePageBloc>(context)
                              .add(SearchTapped());
                          Navigator.pushNamed(context, '/search');
                        },
                        behavior: HitTestBehavior.translucent,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset(
                            'assets/icons/Search_icon.svg',
                            color: Colors.black,
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              body: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomMyFeedPost(),
                        CustomMyFeedNoPic(),
                        CustomMyFeedPost(),
                        CustomMyFeedNoPic(),
                        // Your other widgets go here
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomExplore(),
                        // Your other widgets go here
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
