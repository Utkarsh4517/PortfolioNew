import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 600? Container(
      width: screenWidth < 1200? MediaQuery.of(context).size.width * 0.27 : 330,
      height: 475,
      decoration: BoxDecoration(
          color: Colors.amberAccent, borderRadius: BorderRadius.circular(20)),
    ) : Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 475,
      decoration: BoxDecoration(
          color: Colors.amberAccent, borderRadius: BorderRadius.circular(20)),
    );
  }
}
