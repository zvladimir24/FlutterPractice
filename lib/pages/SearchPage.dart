import 'package:flutter/material.dart';
import 'package:notification/widget/CustomSearchBar.dart';
import 'package:notification/widget/CustomTabBar.dart';
import 'package:notification/widget/CustomPeopleTab.dart';
import 'package:notification/widget/CustomCommunitiesTab.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              CustomSearchBar(),
              CustomTabBar(
                tabTitles: ['COMMUNITIES', 'PEOPLE'],
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomCommunitiesTab(),
                            CustomCommunitiesTab(),
                            CustomCommunitiesTab(),
                            CustomCommunitiesTab(),
                            CustomCommunitiesTab(),
                            CustomCommunitiesTab(),
                            CustomCommunitiesTab(),
                            CustomCommunitiesTab(),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                            CustomPeopleTab(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
