import 'package:flutter/material.dart';

class GameBoyModel {
  Widget base({
    required double sizeH,
    required double sizeW,
    Color? borderColor = Colors.transparent,
    Color color = Colors.transparent,
    bool isBorderSize = false,
    double radiusTopLeft = 0,
    double radiusTopRight = 0,
    double radiusBottomLeft = 0,
    double radiusBottomRight = 0,
    double borderS = 3,
    double? leftPosition,
    double? rightPosition,
    double? topPosition,
    Color shadowColor = Colors.transparent,
    double shadowBlur = 0,
    double shadowOffsetX = 0,
    double shadowOffsetY = 0,
    double shadowSpreadRadius = 0,
  }) {
    return Positioned(
      top: topPosition,
      right: rightPosition,
      left: leftPosition,
      child: Container(
        height: sizeH,
        width: sizeW,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radiusTopLeft),
            topRight: Radius.circular(radiusTopRight),
            bottomLeft: Radius.circular(radiusBottomLeft),
            bottomRight: Radius.circular(radiusBottomRight),
          ),
          border: Border.all(
              width: isBorderSize ? borderS : 0,
              color: borderColor! //                   <--- border width here
              ),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: shadowSpreadRadius,
              blurRadius: shadowBlur,
              offset: Offset(shadowOffsetX, shadowOffsetY), // Shadow position
            ),
          ],
        ),
      ),
    );
  }
}
