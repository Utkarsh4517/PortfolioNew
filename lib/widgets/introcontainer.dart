import 'package:flutter/material.dart';

class IntroContainer extends StatelessWidget {
  const IntroContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(20)
        
      ),
    );
  }
}