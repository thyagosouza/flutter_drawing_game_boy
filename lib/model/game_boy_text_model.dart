import 'package:flutter/material.dart';

class GameBoyTextModel {
  Widget baseText({
    Color color = Colors.transparent,
    String text = "",
    String fontFamily = "",
    double fontSize = 12,
    FontWeight? fontWeight,
    double? leftPosition,
    double? rightPosition,
    double? topPosition,
  }) {
    return Positioned(
      top: topPosition,
      right: rightPosition,
      left: leftPosition,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
