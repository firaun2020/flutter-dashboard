import 'package:flutter/material.dart';
import 'package:web_project/constants/colors.dart';
import 'package:web_project/widgets/custom_text.dart';
import 'package:web_project/widgets/responsive.dart';

// AppBar topNavigation(BuildContext context, GlobalKey<ScaffoldState> key) =>
//     AppBar(
//       elevation: 0,
//       backgroundColor: Colors.white,
//     );

AppBar topNavigation(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Row(
      children: [
        Visibility(
          child: CustomText(
              text: "Dashboard",
              color: lightgrey,
              fontWeight: FontWeight.bold,
              fontsize: 20),
        ),
        Expanded(child: Container()),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
        ),
        Stack(
          children: [
            IconButton(onPressed: (() {}), icon: Icon(Icons.notifications)),
            Positioned(
              child: Container(),
              top: 7,
              right: 7,
            )
          ],
        ),
        SizedBox(
          width: 16,
        ),
        CustomText(
            text: "Zee Q",
            color: lightgrey,
            fontWeight: FontWeight.bold,
            fontsize: 20),
        Container(
          child: IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        )
      ],
    ),
    iconTheme: IconThemeData(color: dark),
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
