import 'package:flutter/material.dart';
import 'package:notification/styles/app_styles.dart';

class CustomAroundContent extends StatelessWidget {
  const CustomAroundContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 8),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      "Palilula",
                      style: AppStyles.bodyText2,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                    child: Text(
                      "Lorem, ipsums",
                      style: AppStyles.bodyText5,
                    ),
                  ),
                ),
                SizedBox(
                  width: 4, // Adjust the width as needed
                ),
                Text(
                  "and",
                  style: AppStyles.bodyText5.copyWith(
                    color: AppStyles.bodyText5.color!.withOpacity(0.5),
                  ), // Apply the desired style
                ),
                SizedBox(
                  width: 4, // Adjust the width as needed
                ),
                Text(
                  "7 more",
                  style: AppStyles.bodyText5,
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(right: 20),
              child: SizedBox(
                child: Image.asset(
                  'assets/icons/Forward.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
