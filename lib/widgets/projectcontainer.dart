import 'package:flutter/material.dart';
import 'package:newportfolio/constants/images.dart';

class ProjectContainer extends StatefulWidget {
  final String image;
  const ProjectContainer({required this.image, super.key});

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  double scaleFactor = 1.0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          scaleFactor = 1.1;
        });
      },
      onExit: (_) {
        setState(() {
          scaleFactor = 1.0;
        });
      },
      child: Transform.scale(
          scale: scaleFactor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: screenWidth < 700 ?  Image.asset(
              widget.image,
              width:  screenWidth * 0.7 ,
              height:  screenWidth * 0.7 ,
            ) : Image.asset(
              widget.image,
              width: screenWidth < 1100? screenWidth * 0.45 : 500,
              height: screenWidth < 1100? screenWidth * 0.45 : 500,
            ),
          )),
    );
  }
}
