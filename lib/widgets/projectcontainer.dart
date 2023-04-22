import 'package:flutter/material.dart';
import 'package:newportfolio/constants/images.dart';

class ProjectContainer extends StatefulWidget {
  final String image;
  const ProjectContainer({required this.image, super.key});

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  bool isHovered = false;
  double scaleFactor = 1.0;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.02);
    final transform = isHovered? hoveredTransform : Matrix4.identity();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: Transform.scale(
        scale: scaleFactor,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          transform: transform,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: screenWidth < 700
                ? Image.asset(
                    widget.image,
                    width: screenWidth * 0.7,
                    height: screenWidth * 0.7,
                  )
                : Image.asset(
                    widget.image,
                    width: screenWidth < 1100 ? screenWidth * 0.45 : 500,
                    height: screenWidth < 1100 ? screenWidth * 0.45 : 500,
                  ),
          ),
        ),
      ),
    );
  }
}
