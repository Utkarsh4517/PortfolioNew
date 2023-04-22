import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newportfolio/widgets/introcontainer.dart';
import 'package:newportfolio/widgets/profilecontainer.dart';
import 'package:newportfolio/widgets/textbutton.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    ResponsiveRowColumn(
                      rowMainAxisAlignment: MainAxisAlignment.center,
                      rowPadding: const EdgeInsets.all(10),
                      columnPadding: const EdgeInsets.all(10),
                      layout:
                          ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                              ? ResponsiveRowColumnType.COLUMN
                              : ResponsiveRowColumnType.ROW,
                      children: const [
                        ResponsiveRowColumnItem(
                          columnOrder: 1,
                          child: IntroContainer(),
                        ),
                        ResponsiveRowColumnItem(child: SizedBox(height: 10,width: 10,)),
                        ResponsiveRowColumnItem(
                          columnOrder: 1,
                          child: ProfileContainer(),
                        ),
                      ],
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
