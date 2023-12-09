import 'package:flutter/material.dart';
import 'package:notification/widget/CustomAroundMeAppBar.dart';
import 'package:notification/widget/CustomCommunitiesTab.dart';
import 'package:notification/widget/AroundMeTabBar.dart';

class AroundMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              CustomAroundMeAppBar(),
              AroundMeTabBar(
                tabTitles: [
                  'PALILUA',
                  'STARI GRAD',
                  'ZEMUN',
                  'VRACAR',
                  'DORCOL',
                ],
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
