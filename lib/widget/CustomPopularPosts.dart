import 'package:flutter/material.dart';
import 'package:notification/widget/CustomPopularPostsContent.dart';

class CustomPopularPosts extends StatefulWidget {
  const CustomPopularPosts({Key? key}) : super(key: key);

  @override
  _CustomPopularPostsState createState() => _CustomPopularPostsState();
}

class _CustomPopularPostsState extends State<CustomPopularPosts> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          child: PageView.builder(
            controller: _pageController,
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 330,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: CustomPopularPostsContent(),
              );
            },
          ),
        ),
        SizedBox(height: 8),
        _buildIndicator(),
      ],
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(items.length, (index) {
        return Container(
          width: 24,
          height: 4,
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: _currentPage == index ? Colors.black : Colors.grey,
          ),
        );
      }),
    );
  }
}

List<String> items = List.generate(5, (index) => 'hello world');
