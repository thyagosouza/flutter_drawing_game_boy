import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/dimensions.dart';
import '../../model/game_boy_model.dart';
import '../../model/game_boy_text_model.dart';

class TextNintendoGameboy extends StatelessWidget {
  const TextNintendoGameboy({super.key});

  @override
  Widget build(BuildContext context) {
    final GameBoyTextModel t = GameBoyTextModel();

    return Stack(
      children: [
        Container(
          //color: Colors.blue,
          width: Dimensions.sizeH200,
          height: Dimensions.sizeH19,
          child: Stack(children: [
            t.baseText(
              topPosition: 3,
              fontSize: Dimensions.sizeH13,
              color: AppColors.fontBlue,
              text: 'Nintendo',
              fontFamily: 'Nintendo10',
            ),
            t.baseText(
              leftPosition: 76,
              fontSize: Dimensions.font15,
              color: AppColors.fontBlue,
              text: 'GAME BOY',
              fontFamily: 'Nintendo07',
              letterSpacing: -2,
            ),
          ]),
        ),
      ],
    );
  }
}
