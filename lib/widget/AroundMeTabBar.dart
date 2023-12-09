import 'package:flutter/material.dart';
import 'package:notification/styles/app_styles.dart';

class AroundMeTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<String> tabTitles;

  const AroundMeTabBar({Key? key, required this.tabTitles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define the custom color
    Color customColor = Color(0xFF173F5F);

    return Container(
      color: Colors.white,
      child: TabBar(
        tabs: tabTitles.map((title) {
          return Tab(
            child: Container(
              child: Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: AppStyles.bodyText1,
                  ),
                ],
              ),
            ),
          );
        }).toList(),
        isScrollable: true,
        labelPadding: EdgeInsets.only(
          left: 4,
          right: 0,
          top: 0,
          bottom: 0,
        ),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            color: customColor,
            width: 3,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
