import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            width: 1050,
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
                              SizedBox(height: 10,),
                              ProfileContainer(),
                            ],
                          );
                        } else {
                          return Row(
                            children: const [
                              IntroContainer(),
                              SizedBox(width: 10,),
                              ProfileContainer(),
                            ],
                          );
                        }
                      },
                    ),
                    // PROJECT SECTION
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        if (constraints.maxWidth < 600) {
                          return Column(
                            children: const [
                              ProjectContainer(),
                              SizedBox(height: 10,),
                              ProjectContainer(),
                              
                            ],
                          );
                        } else {
                          return Row(
                            children: const [
                              ProjectContainer(),
                              SizedBox(height: 10,),
                              ProjectContainer(),
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
