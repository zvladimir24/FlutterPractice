import 'package:flutter/material.dart';
import 'package:notification/styles/app_styles.dart';

class CustomPeopleTab extends StatelessWidget {
  const CustomPeopleTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      child: Row(
        children: [
          // First Column - Single CircleAvatar
          SizedBox(
            width: 50,
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
              ),
            ),
          ),

          // Second Column - Text
          Expanded(
            child: SizedBox(
              width: 265,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Milan Miskovic",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF173F5F),
                      fontWeight: FontWeight.w500,
                      height: 1.375,
                    ),
                  ),
                  SizedBox(
                      height:
                          2), // Adjust the spacing between the two text widgets
                  Text(
                    "@labrador",
                    style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF173F5F).withOpacity(0.5),
                      fontWeight: FontWeight.w300,
                      height: 1.41667,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Third Column - Picture
          Container(
            width: 90,
            child: ElevatedButton(
              onPressed: () {
                // Add your follow logic here
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF89438),
                minimumSize: Size(87, 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // Set border-radius
                ),
              ),
              child: Text(
                'Follow',
                style: AppStyles.bodyText6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
