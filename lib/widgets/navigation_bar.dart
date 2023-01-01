import 'package:flutter/material.dart';
import 'package:web_project/widgets/responsive.dart';

// AppBar topNavigation(BuildContext context, GlobalKey<ScaffoldState> key) =>
//     AppBar(
//       elevation: 0,
//       backgroundColor: Colors.white,
//     );

AppBar topNavigation(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.blue,
    leading: ResponsiveDesign.isSmall(context)
        ? IconButton(
            onPressed: () {
              key.currentState?.openDrawer();
            },
            icon: const Icon(Icons.menu))
        : Container(
            padding: const EdgeInsets.only(left: 14),
            child: Image.asset(
              "lib/constants/k1.png",
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
  );
}
