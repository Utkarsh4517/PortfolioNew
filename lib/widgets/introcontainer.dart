import 'package:flutter/material.dart';

class IntroContainer extends StatelessWidget {
  const IntroContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double minWidth = 500;

    return Expanded(
      child: Container(
        //constraints: BoxConstraints(minWidth: minWidth),
        width: MediaQuery.of(context).size.width * 0.375,
        height: 500,
        decoration: BoxDecoration(
            color: Colors.amberAccent, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
