import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchBar extends StatelessWidget {
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
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10, top: 34, right: 20),
              height: 74,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      size: 18,
                      color: Color(0xFF5B5B5B),
                    ),
                  ),
                  hintText: 'Search communities and users',
                  hintStyle: TextStyle(
                    color: Color(0xFF5B5B5B),
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(
                      end: 10,
                    ),
                    child: Icon(
                      Icons.close,
                      size: 18,
                      color: Color(0xFF262424),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: EdgeInsets.only(),
                  filled: true,
                  fillColor: Color(0xFFF2F2F2),
                  suffixIconConstraints: BoxConstraints(
                    minHeight: 0,
                    minWidth: 0,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 0,
                    minHeight: 0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
