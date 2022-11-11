import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

import '../../model/game_boy_model.dart';
import '../../model/game_boy_text_model.dart';

class ButtonAction extends StatelessWidget {
  final String text;
  const ButtonAction({Key? key, required this.text});

  @override
  Widget build(BuildContext context) {
    final GameBoyModel i = GameBoyModel();
    final GameBoyTextModel t = GameBoyTextModel();

    return Container(
      width: 45,
      height: 100,
      child: Stack(
        children: [
          i.base(
            topPosition: 1,
            sizeH: 39,
            sizeW: 41,
            color: AppColors.btnPink.withOpacity(0.8),
            isBorderSize: false,
            radiusTopLeft: 50,
            radiusBottomLeft: 50,
            radiusBottomRight: 50,
            radiusTopRight: 50,
          ),
          i.base(
            topPosition: 3,
            sizeH: 39,
            sizeW: 41,
            color: AppColors.btnDark,
            isBorderSize: false,
            radiusTopLeft: 50,
            radiusBottomLeft: 50,
            radiusBottomRight: 50,
            radiusTopRight: 50,
          ),
          i.base(
            topPosition: 3,
            leftPosition: 0,
            sizeH: 36,
            sizeW: 40,
            color: AppColors.btnPurple,
            isBorderSize: false,
            radiusTopLeft: 50,
            radiusBottomLeft: 50,
            radiusBottomRight: 50,
            radiusTopRight: 50,
          ),
          i.base(
            topPosition: 5,
            leftPosition: 4,
            sizeH: 33,
            sizeW: 30,
            color: AppColors.w.withOpacity(0.4),
            isBorderSize: false,
            radiusTopLeft: 50,
            radiusBottomLeft: 50,
            radiusBottomRight: 50,
            radiusTopRight: 50,
          ),
          i.base(
            topPosition: 7,
            leftPosition: 3,
            sizeH: 33,
            sizeW: 34,
            color: AppColors.btnPurple,
            isBorderSize: false,
            radiusTopLeft: 50,
            radiusBottomLeft: 50,
            radiusBottomRight: 50,
            radiusTopRight: 50,
          ),
          t.baseText(
            topPosition: 50,
            leftPosition: 16,
            fontSize: 14,
            color: AppColors.fontBlue,
            fontFamily: 'NintendoLabo',
            text: text,
          ),
        ],
      ),
    );
  }
}
