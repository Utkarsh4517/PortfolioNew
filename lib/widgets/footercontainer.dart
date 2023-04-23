import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newportfolio/widgets/iconcontainer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth < 1100 ? screenWidth * 0.85 : 1040,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xfff7e4bf), Color(0xf2ebfff8)],
          stops: [0, 1],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
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
                "Want to work together?",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth < 700 ? screenWidth * 0.06 : 35,
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
                "Feel free to reach out for collaborations or just a friendly hello\nshrivastava.utkarsh4517@gmail.com",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: screenWidth < 700 ? screenWidth * 0.04 : 20,
                ),
              ),
            ),
          ),
          Container(
            alignment: const AlignmentDirectional(-1, 0),
            child: Column(
              children: [
                 SizedBox(height: screenWidth * 0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        launchGmail('shrivastava.utkarsh4517@gmail.com');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: screenWidth * 0.1,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35))),
                      child: const Text(
                        'Contact me',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenWidth * 0.03,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
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
                SizedBox(height: screenWidth * 0.03,),
              ],
            ),
          )
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
