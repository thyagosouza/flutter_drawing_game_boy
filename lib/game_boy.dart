import 'package:flutter/material.dart';

import 'core/app_colors.dart';
import 'core/dimensions.dart';
import 'model/game_boy_model.dart';
import 'widgets/button_action/button_action.dart';
import 'widgets/button_action/button_action_base.dart';
import 'widgets/phone_input/on_off_widget.dart';
import 'widgets/phone_input/phone_input_widget.dart';
import 'widgets/select_button/select_button.dart';
import 'widgets/select_button/select_button_base.dart';
import 'widgets/sound_output.dart';
import 'widgets/texts/text_nintendo_gameboy.dart';

class GameBoy extends StatefulWidget {
  const GameBoy({super.key});

  @override
  State<GameBoy> createState() => _GameBoyState();
}

class _GameBoyState extends State<GameBoy> {
  @override
  Widget build(BuildContext context) {
    final GameBoyModel i = GameBoyModel();

    //print("current height is" + MediaQuery.of(context).size.height.toString());

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFBEBEBE),
        body: Center(
          child: Container(
            //color: Colors.blue,
            width: 391,
            height: 636,
            child: Stack(
              //alignment: AlignmentDirectional.center,
              children: [
                // big shadow ==============================
                i.base(
                  topPosition: Dimensions.sizeH30,
                  leftPosition: Dimensions.sizeH30,
                  sizeH: 605,
                  sizeW: 360,
                  color: AppColors.bigShadow,
                  isBorderSize: false,
                  radiusBottomRight: 100,
                  radiusTopLeft: 20,
                  radiusBottomLeft: 20,
                  radiusTopRight: 20,
                ),
                // background ==============================
                i.base(
                  sizeH: 605,
                  sizeW: 360,
                  color: AppColors.background1,
                  isBorderSize: true,
                  borderS: 8,
                  borderColor: AppColors.borderColori,
                  radiusBottomRight: 100,
                  radiusTopLeft: 20,
                  radiusBottomLeft: 20,
                  radiusTopRight: 20,
                ),
                //base cinza
                i.base(
                  topPosition: 8,
                  leftPosition: 8,
                  sizeH: 589,
                  sizeW: 339,
                  color: AppColors.background2,
                  borderColor: AppColors.borderColori,
                  radiusBottomRight: 100,
                  radiusTopLeft: 14,
                  radiusBottomLeft: 14,
                  radiusTopRight: 20,
                  isBorderSize: false,
                ),
                //* cortes
                //corte horizontal cima
                i.base(
                  topPosition: 38,
                  leftPosition: 8,
                  sizeH: 10,
                  sizeW: 344,
                  color: AppColors.cortes,
                  isBorderSize: false,
                ),
                //corte esquerdo cima
                i.base(
                  topPosition: 8,
                  leftPosition: 38,
                  sizeH: 30,
                  sizeW: 10,
                  color: AppColors.cortes,
                  isBorderSize: false,
                ),

                // canto esquerdo cima

                i.base(
                  topPosition: 8,
                  leftPosition: 8,
                  sizeH: 25,
                  sizeW: 25,
                  color: AppColors.background2,
                  radiusTopLeft: 14,
                  isBorderSize: false,
                ),
                i.base(
                  topPosition: 11,
                  leftPosition: 15,
                  sizeH: 25,
                  sizeW: 20,
                  color: AppColors.w.withOpacity(0.7),
                  radiusTopLeft: 13,
                  radiusBottomRight: 25,
                  isBorderSize: false,
                ),
                i.base(
                  topPosition: 14,
                  leftPosition: 16,
                  sizeH: 24,
                  sizeW: 22,
                  color: AppColors.background2,
                  radiusTopLeft: 15,
                  isBorderSize: false,
                ),
                // ==== line vertical top left
                i.base(
                  topPosition: 8,
                  leftPosition: 38,
                  sizeH: 32,
                  sizeW: 2,
                  color: AppColors.cortesSombra,
                  isBorderSize: false,
                ),
                // ==== line horizontal top left
                i.base(
                  topPosition: 38,
                  leftPosition: 8,
                  sizeH: 3,
                  sizeW: 32,
                  color: AppColors.cortesSombra,
                  isBorderSize: false,
                ),

                // top center

                i.base(
                  topPosition: 8,
                  leftPosition: 46,
                  sizeH: 30,
                  sizeW: 276,
                  color: AppColors.background2,
                  isBorderSize: false,
                ), // ==== shine
                i.base(
                  topPosition: 12,
                  leftPosition: 90,
                  sizeH: 2,
                  sizeW: 200,
                  color: AppColors.w.withOpacity(0.6),
                  isBorderSize: false,
                ),
                // top center right vertical line
                i.base(
                  topPosition: 8,
                  leftPosition: 324,
                  sizeH: 31,
                  sizeW: 3,
                  color: AppColors.cortesSombra,
                  isBorderSize: false,
                ),
                i.base(
                  topPosition: 38,
                  leftPosition: 47,
                  sizeH: 2,
                  sizeW: 277,
                  color: AppColors.cortesSombra,
                  isBorderSize: false,
                ),
                //corte top right
                i.base(
                  topPosition: 8,
                  leftPosition: 326,
                  sizeH: 32,
                  sizeW: 4,
                  color: AppColors.cortes,
                  isBorderSize: false,
                ),
                i.base(
                  topPosition: 38,
                  leftPosition: 332,
                  sizeH: 3,
                  sizeW: 20,
                  color: AppColors.cortesSombra,
                  isBorderSize: false,
                ),
                //left shine
                i.base(
                  topPosition: 60,
                  leftPosition: 16,
                  sizeH: 445,
                  sizeW: 2,
                  color: AppColors.w.withOpacity(0.7),
                  isBorderSize: false,
                  radiusTopRight: 200,
                  radiusBottomLeft: 50,
                ),

                //tela fundo
                i.base(
                    topPosition: 60,
                    leftPosition: 40,
                    sizeH: 235,
                    sizeW: 292,
                    color: AppColors.screenBack,
                    isBorderSize: true,
                    borderS: 2,
                    borderColor: AppColors.screenBorder,
                    radiusTopRight: 20,
                    radiusTopLeft: 20,
                    radiusBottomLeft: 20,
                    radiusBottomRight: 70),
                //tela front
                i.base(
                    topPosition: 64,
                    leftPosition: 44,
                    sizeH: 230,
                    sizeW: 287,
                    color: AppColors.screenFront,
                    isBorderSize: false,
                    radiusTopRight: 20,
                    radiusTopLeft: 20,
                    radiusBottomLeft: 15,
                    radiusBottomRight: 70),

                // tela sound
                i.base(
                  topPosition: 80,
                  leftPosition: 60,
                  sizeH: 2,
                  sizeW: 250,
                  color: AppColors.screenSoundLine1,
                  isBorderSize: false,
                ),
                i.base(
                  topPosition: 85,
                  leftPosition: 60,
                  sizeH: 2,
                  sizeW: 250,
                  color: AppColors.screenSoundLine2,
                  isBorderSize: false,
                ),
                i.base(
                  // mask fundo
                  topPosition: 75,
                  leftPosition: 130,
                  sizeH: 20,
                  sizeW: 160,
                  color: AppColors.screenFront,
                  isBorderSize: false,
                ),
                Positioned(
                    // "DOT MATRIX WITH STEREO SOUND "
                    top: 78,
                    left: 135,
                    child: Text(
                      'DOT MATRIX WITH STEREO SOUND',
                      style: TextStyle(
                        color: AppColors.background2.withOpacity(0.5),
                        fontFamily: 'Nintendo04',
                        fontSize: Dimensions.font08,
                      ),
                    )),

                //tela
                i.base(
                    topPosition: 94,
                    leftPosition: 94,
                    sizeH: 175,
                    sizeW: 185,
                    color: AppColors.screen,
                    isBorderSize: true,
                    borderColor: AppColors.screenBorder,
                    borderS: 2),
                // redLight
                i.base(
                    topPosition: 150,
                    leftPosition: 60,
                    sizeH: 10,
                    sizeW: 10,
                    color: AppColors.redLight,
                    isBorderSize: false,
                    radiusBottomLeft: 50,
                    radiusBottomRight: 50,
                    radiusTopLeft: 50,
                    radiusTopRight: 50),
                // text BATTERY

                Positioned(
                    top: 170,
                    left: 57,
                    child: Text(
                      'BATTERY',
                      style: TextStyle(
                        color: AppColors.cortes.withOpacity(0.5),
                        fontFamily: 'Nintendo09',
                        fontSize: Dimensions.font06,
                      ),
                    )),

                // text Nintendo
                Positioned(
                  top: 300,
                  left: 45,
                  child: TextNintendoGameboy(),
                ),
                // text GameBoy

                //joystick vertical
                i.base(
                    topPosition: 367,
                    leftPosition: 69,
                    sizeH: 88,
                    sizeW: 30,
                    color: AppColors.joyBackground1,
                    isBorderSize: false,
                    radiusBottomLeft: 7,
                    radiusBottomRight: 7,
                    radiusTopLeft: 7,
                    radiusTopRight: 7),

                //joystick horizontal
                i.base(
                    topPosition: 395,
                    leftPosition: 40,
                    sizeH: 30,
                    sizeW: 88,
                    color: AppColors.joyBackground1,
                    isBorderSize: false,
                    radiusBottomLeft: 7,
                    radiusBottomRight: 7,
                    radiusTopLeft: 7,
                    radiusTopRight: 7),
                //joystick vertical back clear
                i.base(
                  topPosition: 369,
                  leftPosition: 72,
                  sizeH: 82,
                  sizeW: 23,
                  color: AppColors.joyBackground2,
                  isBorderSize: false,
                  radiusBottomRight: 7,
                  radiusTopLeft: 7,
                ),
                //joystick vertical front
                i.base(
                  topPosition: 371,
                  leftPosition: 73,
                  sizeH: 81,
                  sizeW: 25,
                  color: AppColors.joyFront,
                  isBorderSize: false,
                  radiusBottomRight: 7,
                  radiusTopLeft: 7,
                  radiusTopRight: 7,
                ),
                //joystick horizontal back clear
                i.base(
                  topPosition: 398,
                  leftPosition: 42,
                  sizeH: 23,
                  sizeW: 82,
                  color: AppColors.joyBackground2,
                  isBorderSize: false,
                  radiusBottomRight: 7,
                  radiusTopLeft: 4,
                ),
                //joystick horizontal front
                i.base(
                  topPosition: 399,
                  leftPosition: 43,
                  sizeH: 23,
                  sizeW: 81,
                  color: AppColors.joyFront,
                  isBorderSize: false,
                  radiusBottomRight: 7,
                  radiusTopLeft: 7,
                ),
                //joystick vertical front
                i.base(
                  topPosition: 371,
                  leftPosition: 73,
                  sizeH: 81,
                  sizeW: 25,
                  color: AppColors.joyFront,
                  isBorderSize: false,
                  radiusBottomRight: 7,
                  radiusTopLeft: 7,
                  radiusTopRight: 7,
                ),
                i.base(
                  topPosition: 373,
                  leftPosition: 75,
                  sizeH: 19,
                  sizeW: 19,
                  color: AppColors.joyShine,
                  isBorderSize: false,
                  radiusTopLeft: 5,
                ),
                i.base(
                  topPosition: 374,
                  leftPosition: 76,
                  sizeH: 20,
                  sizeW: 22,
                  color: AppColors.joyFront,
                  isBorderSize: false,
                  radiusTopLeft: 10,
                ),
                //joystick horizontal left front

                i.base(
                  topPosition: 401,
                  leftPosition: 45,
                  sizeH: 19,
                  sizeW: 23,
                  color: AppColors.joyShine,
                  isBorderSize: false,
                  radiusTopLeft: 5,
                ),
                i.base(
                  topPosition: 402,
                  leftPosition: 46,
                  sizeH: 20,
                  sizeW: 24,
                  color: AppColors.joyFront,
                  isBorderSize: false,
                  radiusTopLeft: 10,
                ),
                //joystick horizontal right front
                i.base(
                  topPosition: 400,
                  leftPosition: 99,
                  sizeH: 19,
                  sizeW: 24,
                  color: AppColors.joyShine,
                  isBorderSize: false,
                ),
                i.base(
                  topPosition: 401,
                  leftPosition: 98,
                  sizeH: 20,
                  sizeW: 25,
                  color: AppColors.joyFront,
                  isBorderSize: false,
                ),
                //joystick gradient center front
                Positioned(
                  top: 401,
                  left: 76,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF000000),
                            Color(0xFF3e3e3e),
                          ]),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                // shadow corner bottom rigth
                Positioned(
                  top: 548,
                  left: 225,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(29 / -360),
                    child: CustomPaint(
                      size: Size(141, 210),
                      painter: RPSCustomPainter(),
                    ),
                  ),
                ),

                // sound output
                Positioned(
                  top: 495,
                  left: 220,
                  child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(29 / -360),
                      child: Row(
                        children: [
                          SoundOutput(
                            isDark: false,
                          ),
                          const SizedBox(width: 13),
                          SoundOutput(isDark: true),
                          const SizedBox(width: 13),
                          SoundOutput(isDark: true),
                          const SizedBox(width: 13),
                          SoundOutput(isDark: true),
                          const SizedBox(width: 13),
                          SoundOutput(isDark: true),
                          const SizedBox(width: 13),
                          SoundOutput(isDark: true),
                        ],
                      )),
                ),
                Positioned(
                  top: 375,
                  left: 225,
                  child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(29 / -360),
                      child: Row(
                        children: [
                          const ButtonActionBase(),
                        ],
                      )),
                ),
                Positioned(
                  top: 448,
                  left: 93,
                  child: RotationTransition(
                    turns: const AlwaysStoppedAnimation(29 / -360),
                    child: Container(
                      width: 200,
                      child: const SelectButton(
                        text: 'SELECT',
                        textPosition: 2,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 448,
                  left: 151,
                  child: RotationTransition(
                    turns: const AlwaysStoppedAnimation(29 / -360),
                    child: Container(
                      width: 200,
                      child: const SelectButton(text: 'START', textPosition: 6),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 55,
                  child: Container(
                    width: 65,
                    height: 30,
                    child: const OnOffWidget(),
                  ),
                ),
                Positioned(
                  top: 559,
                  left: 120,
                  child: Container(
                    width: 60,
                    height: 38,
                    child: PhoneInputWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = AppColors.background1.withOpacity(0.3);
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0);
    path.quadraticBezierTo(
        size.width / 1.05, size.height / 2, size.width * 1.32, size.height * 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
