import 'package:flutter/material.dart';
import 'package:web_project/widgets/large_screen.dart';
import 'package:web_project/widgets/medium.dart';
import 'package:web_project/widgets/navigation_bar.dart';
import 'package:web_project/widgets/responsive.dart';
import 'package:web_project/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigation(context, scaffoldKey),
      drawer: const Drawer(),
      body: const ResponsiveDesign(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: MediumScreen(),
      ),
    );
  }
}
