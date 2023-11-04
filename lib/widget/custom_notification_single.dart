import 'package:flutter/material.dart';

class CustomNotificationSingle extends StatelessWidget {
  const CustomNotificationSingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 6),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: const NetworkImage(
                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  maxLines: 2,
                  text: TextSpan(
                      text: "Username username ",
                      style: TextStyle(
                        color: Color(0xFF173F5F),
                        fontWeight: FontWeight.w500,
                        height: 1.16667,
                      ),
                      children: [
                        TextSpan(
                          text: "replied to your comment",
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
          ClipRRect(
            borderRadius: BorderRadius.circular(3.0),
            child: Image.network(
              'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              height: 38,
              width: 38,
            ),
          ),
        ],
      ),
    );
  }
}
