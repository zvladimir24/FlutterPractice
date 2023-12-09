import 'package:flutter/material.dart';
import 'package:notification/styles/app_styles.dart';

class CustomPopularContent extends StatelessWidget {
  const CustomPopularContent({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(left: 10, top: 10),
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
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Doggyland",
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
                        "1.8k members",
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
              padding: EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 62),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your follow logic here
                      },
                      style: AppStyles.customOrangeButton1,
                      child: Text(
                        'Join',
                        style: AppStyles.bodyText6,
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
      ],
    );
  }
}
