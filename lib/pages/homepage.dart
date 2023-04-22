import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newportfolio/constants/images.dart';
import 'package:newportfolio/widgets/introcontainer.dart';
import 'package:newportfolio/widgets/profilecontainer.dart';
import 'package:newportfolio/widgets/projectcontainer.dart';
import 'package:newportfolio/widgets/textbutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Align(
          alignment: const AlignmentDirectional(0, 0),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: 1030,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // START OF TOP ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          color: Colors.yellowAccent,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          'UTKARSH',
                          style: GoogleFonts.chivo(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        CustomTextButton(text: 'Home'),
                        SizedBox(
                          width: 30,
                        ),
                        CustomTextButton(
                          text: 'Projects',
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        CustomTextButton(
                          text: 'Contact',
                        )
                      ],
                    )
                  ],
                ),
                // END OF TOP ROW
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    // INTRO AND PICTURE
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        if (constraints.maxWidth < 600) {
                          return Column(
                            children: const [
                              IntroContainer(),
                              SizedBox(height: 30,),
                              ProfileContainer(),
                            ],
                          );
                        } else {
                          return Row(
                            children: const [
                              IntroContainer(),
                              SizedBox(width: 20,),
                              ProfileContainer(),
                            ],
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 20,),
                    // PROJECT SECTION
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        if (constraints.maxWidth < 700) {
                          return Column(
                            children: const [
                              ProjectContainer(image: brahma,),
                              SizedBox(height: 30,),
                              ProjectContainer(image: weather,),
                              
                            ],
                          );
                        } else {
                          return Row(
                            children: const [
                              ProjectContainer(image: brahma,),
                              SizedBox(width: 30,),
                              ProjectContainer(image: weather,),
                            ],
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 20,),
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        if (constraints.maxWidth < 700) {
                          return Column(
                            children: const [
                              ProjectContainer(image: twitter,),
                              SizedBox(height: 30,),
                              ProjectContainer(image: ecommerce,),
                              
                            ],
                          );
                        } else {
                          return Row(
                            children: const [
                              ProjectContainer(image: twitter,),
                              SizedBox(width: 30,),
                              ProjectContainer(image: ecommerce,),
                            ],
                          );
                        }
                      },
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
