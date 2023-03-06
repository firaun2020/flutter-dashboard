import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project/constants/colors.dart';
import 'package:web_project/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = dashboardPage.obs;
  var hoverItem = "".obs;

  activePage(String itemName) {
    activeItem.value = itemName;
  }

  hover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) {
    activeItem.value == itemName;
  }

  isHover(String itemName) {
    hoverItem.value == itemName;
  }

  Widget returnIcon(String itemName) {
    switch (itemName) {
      case dashboardPage:
        return _customIcon(Icons.dashboard, itemName);
      case driversPage:
        return _customIcon(Icons.drive_eta, itemName);
      case clientPage:
        return _customIcon(Icons.person, itemName);
      case authenticationPage:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
    return Container();
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Icon(
        icon,
        size: 22,
        color: dark,
      );

    return Icon(
      icon,
      color: isHover(itemName) ? dark : lightgrey,
    );
  }
}
