import 'package:flutter/material.dart';
import 'package:notification/styles/app_styles.dart';

class CustomCommunitiesTab extends StatelessWidget {
  const CustomCommunitiesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 368, // Maximum width including padding and border
          maxHeight: 102, // Maximum height including padding and border
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(174, 187, 207, 0.35),
              blurRadius: 15,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Row
              Row(
                children: [
                  // First Column - Single CircleAvatar
                  SizedBox(
                    width: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-photo/park-with-wooden-pathway-benches_1137-254.jpg?w=996&t=st=1700797754~exp=1700798354~hmac=3b35bf73dba8b8f7f9afef2cf45bd59a14928470877bb3a3c756a092ab0f7000',
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
                            "Parkic za pse",
                            style: AppStyles.bodyText2,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "1.8k members",
                            style: AppStyles.bodyText5.copyWith(
                              color:
                                  AppStyles.bodyText5.color!.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Third Column - Picture
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

              // Second Row
              Row(
                children: [
                  // Single Column - Text
                  Expanded(
                    child: SizedBox(
                      width: 265,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Class aptent taciti sociosqu ad litora torquent Class aptent taciti sociosqu ad.",
                            style: AppStyles.bodyText5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
