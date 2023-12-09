import 'package:flutter/material.dart';
import 'package:notification/styles/app_styles.dart';

class CustomPopularPostsContent extends StatelessWidget {
  const CustomPopularPostsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 50,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/icons/Ellipse1.png'),
                      radius: 20,
                    ),
                  ),
                ),
                // Adjust the space between CircleAvatar and Text
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "marcus_levijatan",
                        style: AppStyles.bodyText2,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "doggyland April •25",
                        style: AppStyles.bodyText5.copyWith(
                          color: AppStyles.bodyText5.color!.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(), // Spacer to push the button to the right
            Padding(
              padding: EdgeInsets.only(right: 20, top: 20),
              child: Column(
                children: [
                  Container(
                    height: 62,
                    width: 62,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'Class aptent taciti sociosqu ad litora torquent Class aptent taciti sociosqu ad.',
                  style: AppStyles.bodyText5,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '12 likes • 45 comments',
                  style: AppStyles.bodyText5.copyWith(
                    color: AppStyles.bodyText5.color!.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
