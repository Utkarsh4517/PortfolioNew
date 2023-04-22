import 'package:flutter/material.dart';
import 'package:newportfolio/constants/images.dart';

class ProjectContainer extends StatefulWidget {
  const ProjectContainer({super.key});

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
          child: Image.asset(image1, height: 200, width: 400,),
        )
      ),
    );
  }
}
