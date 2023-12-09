import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notification/styles/app_styles.dart';
import 'package:notification/widget/CustomActive.dart';
import 'package:notification/widget/CustomAroundMe.dart';
import 'package:notification/widget/CustomPopular.dart';
import 'package:notification/widget/CustomPopularPosts.dart';
import 'package:notification/pages/AroundMePage.dart';

class CustomExplore extends StatelessWidget {
  const CustomExplore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 368, // Maximum width including padding and border
          // Maximum height including padding and border
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 0, top: 5, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Row
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Around me",
                      style: AppStyles.bodyText3
                          .copyWith(color: Color(0xFF173F5F)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AroundMePage(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 210, bottom: 10),
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: SvgPicture.asset('assets/icons/Icon.svg'),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 2),

              // Second Row (Replace "Your Text" with your content)
              CustomAroundMe(),

              // Third Row (Replace "Your Text" with your content)

              // Fourth Row
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10, top: 20),
                      child: Text(
                        "Popular with dog owners",
                        style: AppStyles.bodyText3
                            .copyWith(color: Color(0xFF173F5F)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),

              CustomPopular(),

              // Sixth Row (Replace "Your Text" with your content)

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10, top: 20),
                      child: Text(
                        "Popular posts recently",
                        style: AppStyles.bodyText3
                            .copyWith(color: Color(0xFF173F5F)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),

              // Fifth Row (Replace "Your Text" with your content)

              CustomPopularPosts(),

              // Sixth Row (Replace "Your Text" with your content)

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10, top: 20),
                      child: Text(
                        "Most active comunities",
                        style: AppStyles.bodyText3
                            .copyWith(color: Color(0xFF173F5F)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),

              // Fifth Row (Replace "Your Text" with your content)

              CustomActive(),

              // Sixth Row (Replace "Your Text" with your content)
            ],
          ),
        ),
      ),
    );
  }
}
