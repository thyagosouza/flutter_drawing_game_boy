import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/app_colors.dart';
import '../../core/dimensions.dart';
import '../../model/game_boy_model.dart';
import '../../model/game_boy_text_model.dart';

class PhoneInputWidget extends StatelessWidget {
  const PhoneInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final GameBoyModel i = GameBoyModel();
    final GameBoyTextModel t = GameBoyTextModel();

    return Container(
      //color: Colors.blue,
      width: 74,
      height: 40,
      child: Stack(children: [
        i.base(
          topPosition: 7,
          leftPosition: 0,
          sizeH: 15,
          sizeW: 55,
          color: AppColors.inputBack,
          isBorderSize: false,
          radiusTopLeft: 50,
          radiusBottomLeft: 50,
          radiusBottomRight: 50,
          radiusTopRight: 50,
        ),
        i.base(
          topPosition: 8,
          leftPosition: 2,
          sizeH: 15,
          sizeW: 55,
          color: AppColors.inputFront,
          isBorderSize: false,
          radiusTopLeft: 50,
          radiusBottomLeft: 50,
          radiusBottomRight: 50,
          radiusTopRight: 50,
        ),
        i.base(
          topPosition: 24,
          leftPosition: 25,
          sizeH: 16,
          sizeW: 2,
          color: AppColors.inputBack,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 22,
          leftPosition: 26,
          sizeH: 16,
          sizeW: 25,
          color: AppColors.inputFront,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 24,
          leftPosition: 34,
          sizeH: 16,
          sizeW: 3,
          color: AppColors.inputBack,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 22,
          leftPosition: 33,
          sizeH: 16,
          sizeW: 3,
          color: AppColors.background2,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 24,
          leftPosition: 44,
          sizeH: 16,
          sizeW: 3,
          color: AppColors.inputBack,
          isBorderSize: false,
        ),
        i.base(
          topPosition: 22,
          leftPosition: 43,
          sizeH: 16,
          sizeW: 3,
          color: AppColors.background2,
          isBorderSize: false,
        ),
        t.baseText(
          topPosition: 10,
          leftPosition: 8,
          fontSize: Dimensions.font09,
          color: AppColors.w.withOpacity(0.8),
          text: 'PHONES',
        ),
        t.baseText(
          topPosition: 10,
          leftPosition: 8.3,
          fontSize: Dimensions.font09,
          color: AppColors.background1.withOpacity(0.6),
          text: 'PHONES',
        ),
      ]),
    );
  }
}
