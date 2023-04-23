import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newportfolio/constants/images.dart';

class ProjectContainer extends StatefulWidget {
  final String image;
  final String title;
  final String bodyText;
  const ProjectContainer(
      {required this.image,
      required this.bodyText,
      required this.title,
      super.key});

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  bool isHovered = false;
  double scaleFactor = 1.0;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.02);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
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
          duration: const Duration(milliseconds: 400),
          transform: transform,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: screenWidth < 700
                ? Stack(
                    children: [
                      Image.asset(
                        widget.image,
                        width: screenWidth * 0.7,
                        height: screenWidth * 0.7,
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Text(
                          widget.title,
                          style: GoogleFonts.chivo(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 40,
                        child: Text(
                          widget.bodyText,
                          style: GoogleFonts.chivo(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  )
                : Stack(children: [
                    Image.asset(
                      widget.image,
                      width: screenWidth < 1100 ? screenWidth * 0.45 : 500,
                      height: screenWidth < 1100 ? screenWidth * 0.45 : 500,
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Text(
                        widget.title,
                        style: GoogleFonts.chivo(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 10,
                        top: 40,
                        child: Text(
                          widget.bodyText,
                          style: GoogleFonts.chivo(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                  ]),
          ),
        ),
      ),
    );
  }
}
