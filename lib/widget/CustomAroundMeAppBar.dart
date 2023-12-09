import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notification/styles/app_styles.dart';

class CustomAroundMeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Adjust the height as needed
      color: Colors.white,
      child: Row(
        children: [
          // Wrap the SVG icon in a GestureDetector
          GestureDetector(
            onTap: () {
              // Only trigger pop if the tap is on the SVG icon
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 36),
              width: 55,
              height: 72,
              child: SvgPicture.asset(
                'assets/icons/Icons.svg',
                width: 34,
                height: 34,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 36),
            child: Text(
              'Around me',
              style: AppStyles.bodyText3,
            ),
          )
        ],
      ),
    );
  }
}
