import 'package:flutter/material.dart';
import 'package:notification/widget/CustomActiveContent.dart';

class CustomActive extends StatelessWidget {
  const CustomActive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              for (int i = 0; i < items.length; i++)
                Container(
                    width: 302,
                    height: 102,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(174, 187, 207, 0.35),
                          blurRadius: 15,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: CustomActiveContent()),
            ],
          ),
          Row(
            children: [
              for (int i = 0; i < items.length; i++)
                Container(
                    width: 302,
                    height: 102,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(174, 187, 207, 0.35),
                          blurRadius: 15,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: CustomActiveContent()),
            ],
          ),
        ],
      ),
    );
  }
}

List<String> items = List.generate(10, (index) => 'hello world');
