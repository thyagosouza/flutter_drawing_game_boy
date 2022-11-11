import 'package:flutter/material.dart';

import 'button_action.dart';

class ButtonActionBase extends StatelessWidget {
  const ButtonActionBase({Key? key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 114,
      height: 70,
      child: Stack(
        children: [
          Container(
            width: 115,
            height: 50,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(125, 153, 153, 153),
                    Colors.transparent,
                  ],
                )),
          ),
          Positioned(
              top: 3,
              left: 4,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonAction(text: 'B'),
                  ButtonAction(text: 'A'),
                ],
              ))
        ],
      ),
    );
  }
}
