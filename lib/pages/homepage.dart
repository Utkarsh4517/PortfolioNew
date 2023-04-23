import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newportfolio/constants/images.dart';
import 'package:newportfolio/widgets/footercontainer.dart';
import 'package:newportfolio/widgets/introcontainer.dart';
import 'package:newportfolio/widgets/profilecontainer.dart';
import 'package:newportfolio/widgets/projectcontainer.dart';
import 'package:newportfolio/widgets/textbutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _scrollController,
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
                  /*  Row(
                      children: [
                        const CustomTextButton(text: 'Home'),
                        SizedBox(
                          width: screenWidth < 455 ? screenWidth * 0.005 : 30,
                        ),
                        const CustomTextButton(
                          text: 'Projects',
                        ),
                        SizedBox(
                          width: screenWidth < 455 ? screenWidth * 0.005 : 30,
                        ),
                        const CustomTextButton(
                          text: 'Contact',
                        )
                      ],
                    )
                    */
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
                        if (constraints.maxWidth < 700) {
                          return Column(
                            children: [
                              FadeIn(
                                child: const ProfileContainer(),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              FadeIn(
                                delay: const Duration(milliseconds: 200),
                                duration: const Duration(milliseconds: 1000),
                                child: const IntroContainer(),
                              ),
                            ],
                          );
                        } else {
                          return Row(
                            children: const [
                              IntroContainer(),
                              SizedBox(
                                width: 20,
                              ),
                              ProfileContainer(),
                            ],
                          );
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // PROJECT SECTION
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        if (constraints.maxWidth < 700) {
                          return Column(
                            children: [
                              FadeIn(
                                delay: const Duration(milliseconds: 300),
                                duration: const Duration(milliseconds: 1000),
                                child: const ProjectContainer(
                                  image: brahma,
                                  title: 'Brahma.ai',
                                  bodyText: 'GPT and Dall-E AI in one app',
                                  titleColor: Colors.white,
                                  bodyTextColor:
                                      Color.fromARGB(255, 155, 155, 155),
                                  urlToLaunch:
                                      'https://github.com/Utkarsh4517/Brahma-ChatGPT-Dall-E-Flutter',
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              FadeIn(
                                delay: const Duration(milliseconds: 300),
                                duration: const Duration(milliseconds: 1000),
                                child: const ProjectContainer(
                                  image: weather,
                                  title: 'Weatherastic',
                                  bodyText: 'Weather app using openweather api',
                                  titleColor: Colors.white,
                                  bodyTextColor:
                                      Color.fromARGB(255, 155, 155, 155),
                                  urlToLaunch:
                                      'https://github.com/Utkarsh4517/Weatherastic',
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Row(
                            children: [
                              FadeIn(
                                delay: const Duration(milliseconds: 300),
                                duration: const Duration(milliseconds: 1000),
                                child: const ProjectContainer(
                                  image: brahma,
                                  title: 'Brahma.ai',
                                  bodyText: 'GPT and Dall-E AI in one app',
                                  titleColor: Colors.white,
                                  bodyTextColor:
                                      Color.fromARGB(255, 155, 155, 155),
                                  urlToLaunch:
                                      'https://github.com/Utkarsh4517/Brahma-ChatGPT-Dall-E-Flutter',
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              FadeIn(
                                delay: const Duration(milliseconds: 300),
                                duration: const Duration(milliseconds: 1000),
                                child: const ProjectContainer(
                                  image: weather,
                                  title: 'Weatherastic',
                                  bodyText: 'Weather app using openweather api',
                                  titleColor: Colors.white,
                                  bodyTextColor:
                                      Color.fromARGB(255, 155, 155, 155),
                                  urlToLaunch:
                                      'https://github.com/Utkarsh4517/Weatherastic',
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        if (constraints.maxWidth < 700) {
                          return Column(
                            children: [
                              FadeIn(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 1000),
                                child: const ProjectContainer(
                                  title: 'Twitter clone',
                                  image: twitter,
                                  bodyText:
                                      'Twitter clone using flutter and appwrite',
                                  titleColor: Colors.black,
                                  bodyTextColor:
                                      Color.fromARGB(255, 51, 51, 51),
                                  urlToLaunch:
                                      'https://github.com/Utkarsh4517/Twitter-Clone',
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              FadeIn(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 1000),
                                child: const ProjectContainer(
                                  title: 'E-commerce app',
                                  image: ecommerce,
                                  bodyText:
                                      'E-commerce app using flutter and node js',
                                  titleColor: Colors.black,
                                  bodyTextColor:
                                      Color.fromARGB(255, 51, 51, 51),
                                  urlToLaunch:
                                      'https://github.com/Utkarsh4517/Flutter_E-commerce',
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Row(
                            children: [
                              FadeIn(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 1000),
                                child: const ProjectContainer(
                                  title: 'Twitter clone',
                                  image: twitter,
                                  bodyText:
                                      'Twitter clone using flutter and appwrite',
                                  titleColor: Colors.black,
                                  bodyTextColor:
                                      Color.fromARGB(255, 51, 51, 51),
                                  urlToLaunch:
                                      'https://github.com/Utkarsh4517/Twitter-Clone',
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              FadeIn(
                                delay: const Duration(milliseconds: 500),
                                duration: const Duration(milliseconds: 1000),
                                child: const ProjectContainer(
                                  title: 'E-commerce app',
                                  image: ecommerce,
                                  bodyText:
                                      'E-commerce app using flutter and node js',
                                  titleColor: Colors.black,
                                  bodyTextColor:
                                      Color.fromARGB(255, 51, 51, 51),
                                  urlToLaunch:
                                      'https://github.com/Utkarsh4517/Flutter_E-commerce',
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
