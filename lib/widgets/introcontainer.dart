import 'package:flutter/material.dart';

class IntroContainer extends StatelessWidget {
  const IntroContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 600
        ? Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.375,
              height: 500,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xfff7e4bf), Color(0xf2ebfff8)],
                    stops: [0, 1],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(20)),
            ),
          )
        : Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 500,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xfff7e4bf), Color(0xf2ebfff8)],
                  stops: [0, 1],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.circular(20)),
          );
  }
}
