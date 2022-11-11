import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/app_colors.dart';
import '../../model/game_boy_model.dart';
import '../../model/game_boy_text_model.dart';

class OnOffWidget extends StatelessWidget {
  const OnOffWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final GameBoyModel i = GameBoyModel();
    final GameBoyTextModel t = GameBoyTextModel();
    return Container(
      //color: Colors.blue,
      width: 60,
      height: 35,
      child: Stack(children: [
        i.base(
          topPosition: 6,
          leftPosition: 0,
          sizeH: 15,
          sizeW: 50,
          color: AppColors.inputBack,
          isBorderSize: false,
          radiusTopLeft: 50,
          radiusBottomLeft: 50,
          radiusBottomRight: 50,
          radiusTopRight: 50,
        ),
        i.base(
          topPosition: 6,
          leftPosition: 2,
          sizeH: 15,
          sizeW: 50,
          color: AppColors.inputFront,
          isBorderSize: false,
          radiusTopLeft: 50,
          radiusBottomLeft: 50,
          radiusBottomRight: 50,
          radiusTopRight: 50,
        ),
        i.base(
          topPosition: 0,
          leftPosition: 5,
          sizeH: 7,
          sizeW: 2,
          color: AppColors.inputBack,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 0,
          leftPosition: 6,
          sizeH: 7,
          sizeW: 25,
          color: AppColors.inputFront,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 0,
          leftPosition: 14,
          sizeH: 7,
          sizeW: 3,
          color: AppColors.inputBack,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 0,
          leftPosition: 13,
          sizeH: 7,
          sizeW: 3,
          color: AppColors.background2,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 0,
          leftPosition: 24,
          sizeH: 7,
          sizeW: 3,
          color: AppColors.inputBack,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 0,
          leftPosition: 23,
          sizeH: 7,
          sizeW: 3,
          color: AppColors.background2,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 6,
          leftPosition: 34,
          sizeH: 1,
          sizeW: 13,
          color: AppColors.inputBack,
          isBorderSize: false,
        ),
        t.baseText(
          topPosition: 8,
          leftPosition: 5,
          fontSize: 8,
          color: AppColors.w.withOpacity(0.8),
          //fontFamily: 'Nintendo05',
          text: 'ON • OFF',
        ),
        t.baseText(
          topPosition: 8,
          leftPosition: 5.3,
          fontSize: 8,
          color: AppColors.background1.withOpacity(0.6),
          //fontFamily: 'Nintendo05',
          text: 'ON • OFF',
        ),
      ]),
    );
  }
}
