import 'package:flutter/material.dart';

import 'package:notification/styles/app_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomMyFeedPost extends StatelessWidget {
  const CustomMyFeedPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 368, // Maximum width including padding and border
          maxHeight: 500, // Maximum height including padding and border
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
          child: Row(
            children: [
              // First Column - CircleAvatar
              SizedBox(
                width: 50,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/park-with-wooden-pathway-benches_1137-254.jpg?w=996&t=st=1700797754~exp=1700798354~hmac=3b35bf73dba8b8f7f9afef2cf45bd59a14928470877bb3a3c756a092ab0f7000',
                    ),
                  ),
                ),
              ),

              // Second Column
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // First Row
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "marcus_levijatan",
                              style: AppStyles.bodyText6
                                  .copyWith(color: Color(0xFF173F5F)),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 92),
                              child: SizedBox(
                                height: 24,
                                width: 24,
                                child: SvgPicture.asset(
                                    'assets/icons/tabler-icon-dots.svg'),
                              )),
                        ],
                      ),
                      SizedBox(height: 2),

                      // Second Row (Replace "Your Text" with your content)
                      Text(
                        'Frida has a resting grumpy face, but she nails the look down every time!',
                        style: AppStyles.bodyText5,
                      ),
                      SizedBox(height: 8),

                      // Third Row (Replace "Your Text" with your content)
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "April 25",
                              style: AppStyles.bodyText5,
                            ),
                          ),
                          SizedBox(width: 20),
                          Image.asset(
                            'assets/icons/Ellipse1.png',
                            width: 16,
                            height: 16,
                          ),
                          SizedBox(width: 2),
                          Image.asset(
                            'assets/icons/Doggyland.png',
                            width: 78,
                            height: 16,
                          ),
                        ],
                      ),
                      SizedBox(height: 8),

                      // Fourth Row (Replace "Your Text" with your content)
                      SizedBox(
                        width: 328,
                        height: 328,
                        child: Image.asset(
                          'assets/icons/Dogg1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),

                      // Fifth Row (Replace "Your Text" with your content)
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Paw2.svg',
                            width: 36,
                            height: 36,
                          ),
                          Text('12'),
                          SizedBox(width: 16),
                          SvgPicture.asset(
                            'assets/icons/Icons2.svg',
                            width: 36,
                            height: 36,
                          ),
                          Text('45'),
                          SizedBox(width: 100),
                          SvgPicture.asset(
                            'assets/icons/tabler-icon-share-3.svg',
                            width: 36,
                            height: 36,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
