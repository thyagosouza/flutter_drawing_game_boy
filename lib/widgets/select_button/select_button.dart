import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

import '../../model/game_boy_model.dart';
import '../../model/game_boy_text_model.dart';

class SelectButton extends StatelessWidget {
  final String text;
  final double textPosition;

  const SelectButton({
    Key? key,
    required this.text,
    required this.textPosition,
  });

  @override
  Widget build(BuildContext context) {
    final GameBoyModel i = GameBoyModel();
    final GameBoyTextModel t = GameBoyTextModel();

    return Container(
      width: 55,
      height: 35,
      child: Stack(
        children: [
          i.base(
            leftPosition: 5,
            sizeH: 16,
            sizeW: 44,
            color: AppColors.btnSelectBack,
            isBorderSize: false,
            radiusTopLeft: 50,
            radiusBottomLeft: 50,
            radiusBottomRight: 50,
            radiusTopRight: 50,
          ),
          i.base(
            topPosition: 2,
            leftPosition: 7,
            sizeH: 13,
            sizeW: 40,
            color: AppColors.btnSelectDarkGrey,
            isBorderSize: false,
            radiusTopLeft: 50,
            radiusBottomLeft: 50,
            radiusBottomRight: 50,
            radiusTopRight: 50,
          ),
          i.base(
            topPosition: 2,
            leftPosition: 6,
            sizeH: 12,
            sizeW: 40,
            color: AppColors.btnSelectGrey,
            isBorderSize: false,
            radiusTopLeft: 50,
            radiusBottomLeft: 50,
            radiusBottomRight: 50,
            radiusTopRight: 50,
          ),
          i.base(
            topPosition: 3,
            leftPosition: 12,
            sizeH: 2,
            sizeW: 25,
            color: AppColors.w.withOpacity(0.15),
            isBorderSize: false,
            radiusTopLeft: 50,
            radiusBottomLeft: 50,
            radiusBottomRight: 50,
            radiusTopRight: 50,
          ),
          t.baseText(
            topPosition: 20,
            leftPosition: textPosition,
            fontSize: 9,
            color: AppColors.fontBlue,
            fontFamily: 'NintendoLabo',
            text: text,
          ),
        ],
      ),
    );
  }
}
