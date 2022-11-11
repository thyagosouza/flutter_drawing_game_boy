import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

import '../model/game_boy_model.dart';

class SoundOutput extends StatelessWidget {
  final bool isDark;
  SoundOutput({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    final GameBoyModel i = GameBoyModel();

    return Stack(
      children: [
        i.base(
          leftPosition: 2,
          sizeH: 65,
          sizeW: 7,
          color: AppColors.soundOutShine,
          isBorderSize: false,
          radiusTopLeft: 10,
          radiusBottomLeft: 10,
          radiusBottomRight: 10,
          radiusTopRight: 10,
        ),
        i.base(
          sizeH: 65,
          sizeW: 7,
          color: AppColors.background1,
          isBorderSize: false,
          radiusTopLeft: 10,
          radiusBottomLeft: 10,
          radiusBottomRight: 10,
          radiusTopRight: 10,
        ),
        i.base(
          topPosition: 1,
          leftPosition: 1,
          sizeH: 64,
          sizeW: 6,
          color: AppColors.soundOutCut,
          isBorderSize: false,
          radiusTopLeft: 10,
          radiusBottomLeft: 10,
          radiusBottomRight: 10,
          radiusTopRight: 10,
        ),
        i.base(
          topPosition: 1,
          leftPosition: 1,
          sizeH: 47,
          sizeW: 1,
          color: isDark ? AppColors.joyFront : Colors.transparent,
          isBorderSize: false,
          radiusTopLeft: 10,
          radiusBottomLeft: 10,
          radiusBottomRight: 10,
          radiusTopRight: 10,
        ),
      ],
    );
  }
}
