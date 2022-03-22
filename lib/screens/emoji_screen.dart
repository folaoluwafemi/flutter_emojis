import 'package:flutter/material.dart';

class EmojiScreen extends StatelessWidget {
  static const String id = '/emojiScreen';

  const EmojiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double sideLength = 300.0;
    return Stack(
      children: [
        Center(
          child: Container(
            width: sideLength,
            height: sideLength,
            decoration: circularEmojiBorder(sideLength),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 310,
            left: 100,
          ),
          child: SizedBox(
            width: 30,
            height: 30,
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: CircleBorder(
                  side: BorderSide(
                    color: Colors.brown.shade900,
                    width: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 310,
            left: 220,
            right: 80,
          ),
          child: SizedBox(
            width: 30,
            height: 30,
            child: Container(
              decoration: ShapeDecoration(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.brown.shade900,
                      width: 20,
                    ),
                  ),
                  color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 400,
            left: 80,
            right: 80,
          ),
          child: SizedBox(
            width: 250,
            height: 90,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(500),
                    bottomRight: Radius.circular(500)),
                color: Colors.brown,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 400,
            left: 82.5,
            right: 80,
          ),
          child: SizedBox(
            width: 195,
            height: 30,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(100, 300),
                  bottomRight: Radius.elliptical(100, 300),
                ),
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 450,
            left: 130,
            right: 80,
          ),
          child: SizedBox(
            width: 100,
            height: 40,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(500, 300),
                  topRight: Radius.elliptical(500, 300),
                  bottomLeft: Radius.elliptical(500, 130),
                  bottomRight: Radius.elliptical(500, 130),
                ),
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

BoxDecoration circularEmojiBorder(double sideLength) => BoxDecoration(
      gradient: RadialGradient(radius: 1, colors: [
        Colors.orange.shade500,
        Colors.brown.shade600,
      ], stops: [
        0.4,
        0.6
      ]),
      border: Border.all(
        width: 5,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(sideLength),
      ),
      color: Colors.yellow,
    );
