import 'package:flutter/material.dart';
import 'package:notification/widget/CustomPeopleTab.dart';

class MultiScroll extends StatelessWidget {
  const MultiScroll();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 100, // Adjust the height as needed
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 180, // Adjust the width as needed
                        margin: EdgeInsets.only(right: 8),
                        color: Colors.white, // Replace with your content
                        alignment: Alignment.center,
                        child: CustomPeopleTab(),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100, // Adjust the height as needed
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 180, // Adjust the width as needed
                        margin: EdgeInsets.only(right: 8),
                        color: Colors.white, // Replace with your content
                        alignment: Alignment.center,
                        child: CustomPeopleTab(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
