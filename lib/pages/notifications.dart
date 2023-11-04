import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notification/widget/custom_notification_single.dart';
import 'package:notification/widget/custom_notification_profiles.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size(428, 79),
          child: Container(
            width: 428,
            height: 79,
            child: AppBar(
              title: Container(
                margin: EdgeInsets.only(left: 7, top: 41),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                    color: Color(0xFF173F5F),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 0.0,
              leading: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: EdgeInsets.only(left: 30, top: 36),
                  width: 34, // Set the desired width.
                  height: 34, // Set the desired height.
                  child: SvgPicture.asset('assets/icons/Icons.svg'),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 19, top: 36),
                  width: 34, // Set the desired width.
                  height: 34, // Set the desired height.
                  child: SvgPicture.asset('assets/icons/tabler-icon-dots.svg'),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 31, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 26),
                  child: Text(
                    "New",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                ),
                CustomNotificationProfiles(),
                CustomNotificationSingle(),
                Text(
                  "Yesterday",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomNotificationProfiles(),
                CustomNotificationSingle(),
                CustomNotificationProfiles(),
                CustomNotificationSingle(),
                Text(
                  "Last 7 days",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomNotificationProfiles(),
                CustomNotificationSingle(),
                CustomNotificationProfiles(),
                CustomNotificationSingle(),
                CustomNotificationProfiles(),
                CustomNotificationSingle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
