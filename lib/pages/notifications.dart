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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0.0,
              expandedHeight: 79,
              backgroundColor: Colors.white,
              leading: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: EdgeInsets.only(left: 30, top: 36),
                  width: 34,
                  height: 34,
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
                  width: 34,
                  height: 34,
                  child: SvgPicture.asset('assets/icons/tabler-icon-dots.svg'),
                ),
              ],
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
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(right: 30, left: 26),
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
          ],
        ),
      ),
    );
  }
}
