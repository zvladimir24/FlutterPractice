import 'package:flutter/material.dart';

class CustomNotificationProfiles extends StatelessWidget {
  const CustomNotificationProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 6),
      child: Row(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Stack(children: const [
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                ),
              ),
              Positioned(
                bottom: 30,
                right: 30,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                ),
              ),
            ]),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  maxLines: 2,
                  text: TextSpan(
                      text: "Username, username2, username 3 and 34 others ",
                      style: TextStyle(
                        color: Color(0xFF173F5F),
                        fontWeight: FontWeight.w500,
                        height: 1.16667,
                      ),
                      children: [
                        TextSpan(
                          text: "liked your post    ",
                          style: TextStyle(
                            color: Color(0xFF173F5F),
                            fontWeight: FontWeight.w300,
                            height: 1.41667,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Image.network(
            'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
