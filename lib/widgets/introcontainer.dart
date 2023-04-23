import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newportfolio/widgets/iconcontainer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';
class IntroContainer extends StatelessWidget {
  const IntroContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 700
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
                      child: SelectableText(
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
                      child: SelectableText(
                        "I care a lot about using design for positive impact. and enjoy creating user-centric, delightful, and human experiences.",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth < 1100 ? screenWidth * 0.05 : 100,
                  ),
                  Container(
                    alignment: const AlignmentDirectional(-1, 0),
                    margin: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            launchGmail('shrivastava.utkarsh4517@gmail.com');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                          child: const SelectableText(
                            'Contact me',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),

                        const SizedBox(
                          width: 10,
                        ),
                        const IconLink(
                            urlToLaunch: 'https://github.com/Utkarsh4517',
                            icon: FontAwesomeIcons.github,
                            colorToChange: Colors.black),
                        const SizedBox(
                          width: 10,
                        ),
                        const IconLink(
                            urlToLaunch: 'https://twitter.com/codeittutkarsh',
                            icon: FontAwesomeIcons.twitter,
                            colorToChange: Colors.blue),
                        const SizedBox(
                          width: 10,
                        ),
                        const IconLink(
                            urlToLaunch:
                                'https://www.linkedin.com/in/utkarsh-shrivastava-7339041a0/',
                            icon: FontAwesomeIcons.linkedin,
                            colorToChange: Color.fromARGB(255, 0, 54, 99)),
                        const SizedBox(
                          width: 10,
                        ),
                        const IconLink(
                            urlToLaunch: 'https://dev.to/utkarsh4517',
                            icon: FontAwesomeIcons.dev,
                            colorToChange: Colors.black),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Container(
            width: screenWidth * 0.9,
            height: screenWidth < 455 ? screenWidth * 1.3: screenWidth * 1.1,
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
                    child: SelectableText(
                      "Hello, I'm Utkarsh, a passionate Flutter developer and an open-source enthusiast",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth<700? screenWidth*0.06: 35,
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
                    child: SelectableText(
                      "I care a lot about using design for positive impact. and enjoy creating user-centric, delightful, and human experiences.",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: screenWidth<700? screenWidth*0.04: 20,
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                  height: screenWidth * 0.08,
                ),
                Container(
                  alignment: const AlignmentDirectional(-1, 0),
                  //margin: const EdgeInsets.only(left: 40),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {launchGmail('shrivastava.utkarsh4517@gmail.com');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              elevation: 0,
                              padding:  EdgeInsets.symmetric(
                                  vertical: 20, horizontal: screenWidth * 0.25),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                            ),
                            child: const SelectableText(
                              'Contact me',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            
                            IconLink(
                                urlToLaunch: 'https://github.com/Utkarsh4517',
                                icon: FontAwesomeIcons.github,
                                colorToChange: Colors.black),
                            SizedBox(
                              width: 10,
                            ),
                            IconLink(
                                urlToLaunch: 'https://twitter.com/codeittutkarsh',
                                icon: FontAwesomeIcons.twitter,
                                colorToChange: Colors.blue),
                            SizedBox(
                              width: 10,
                            ),
                            IconLink(
                                urlToLaunch:
                                    'https://www.linkedin.com/in/utkarsh-shrivastava-7339041a0/',
                                icon: FontAwesomeIcons.linkedin,
                                colorToChange: Color.fromARGB(255, 0, 54, 99)),
                            SizedBox(
                              width: 10,
                            ),
                            IconLink(
                                urlToLaunch: 'https://dev.to/utkarsh4517',
                                icon: FontAwesomeIcons.dev,
                                colorToChange: Colors.black),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
    launchGmail(String email) async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: email,
    query: 'subject=Hello&body=Hi, this is my email',
  );
  String url = params.toString();
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
}
