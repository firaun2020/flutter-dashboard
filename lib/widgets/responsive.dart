import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
// const int customScreenSize = 1100;

class ResponsiveDesign extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveDesign({
    Key? key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
  }) : super(key: key);

  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width < smallScreenSize;

  static bool isMed(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isCustom(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _maxWidth = constraints.maxWidth;
      if (_maxWidth >= largeScreenSize) {
        return largeScreen;
      } else if (_maxWidth < largeScreenSize && _maxWidth >= mediumScreenSize) {
        return mediumScreen;
      } else {
        return smallScreen;
      }
    });
  }
}
