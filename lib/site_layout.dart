import 'package:flutter/material.dart';
import 'package:web_project/widgets/large_screen.dart';
import 'package:web_project/widgets/medium.dart';
import 'package:web_project/widgets/responsive.dart';
import 'package:web_project/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: const ResponsiveDesign(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: MediumScreen(),
        ));
  }
}
