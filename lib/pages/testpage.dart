import 'package:flutter/material.dart';
import 'package:newportfolio/widgets/introcontainer.dart';
import 'package:newportfolio/widgets/profilecontainer.dart';
import 'package:responsive_framework/responsive_row_column.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveRowColumn(
              layout: screenWidth < 800
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: const [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: IntroContainer(),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: ProfileContainer(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
