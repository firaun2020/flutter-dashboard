import 'package:flutter/material.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.white,
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          color: Colors.yellow,
        ),
      )
    ]);
  }
}
