import 'package:flutter/material.dart';

import 'select_button.dart';

class SelectButtonBase extends StatelessWidget {
  final double textPosition;
  const SelectButtonBase({Key? key, required this.textPosition});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 100,
      child: Stack(
        children: [
          Positioned(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectButton(text: 'SELECT', textPosition: textPosition),
              SelectButton(text: 'START', textPosition: textPosition),
            ],
          ))
        ],
      ),
    );
  }
}
