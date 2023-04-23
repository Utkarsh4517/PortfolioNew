import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newportfolio/widgets/iconcontainer.dart';

class IntroContainer extends StatelessWidget {
  const IntroContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 600
        ? Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.375,
              height: 475,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xfff7e4bf), Color(0xf2ebfff8)],
                    stops: [0, 1],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1, 0),
                    child: Container(
                      width: 600,
                      padding: const EdgeInsets.only(left: 40, right: 10),
                      child: Text(
                        "Hello, I'm Utkarsh, a passionate Flutter developer and an open-source enthusiast",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1, 0),
                    child: Container(
                      width: 700,
                      padding: const EdgeInsets.only(left: 40, right: 10),
                      child: Text(
                        "I care a lot about using design for positive impact. and enjoy creating user-centric, delightful, and human experiences.",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100,),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 55),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                            ),
                            child: const Text(
                              'Contact me',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const IconLink(icon: Icons.home, colorToChange: Colors.yellow)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 475,
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
