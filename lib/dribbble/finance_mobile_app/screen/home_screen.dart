import 'dart:math';

import 'package:dribbble/dribbble/finance_mobile_app/widgets/add_balance_floating_action_button.dart';
import 'package:dribbble/dribbble/finance_mobile_app/widgets/balance_banner_container.dart';
import 'package:dribbble/dribbble/finance_mobile_app/widgets/top_banner_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopBannerContainer(),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: const [
                      BalanceBannerContainer(),
                      Positioned(
                        bottom: -28,
                        child: AddBalanceFloatingActionButton(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  const BallPaintWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BallPaintWidget extends StatelessWidget {
  const BallPaintWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(50, 50),
      painter: BallPainter(),
    );
  }
}

class BallPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    assert(size.height == size.width,
        "Expect a square, size must be equal to Height and Width");
    final Paint squarePaint = Paint()
      ..strokeWidth = 5
      ..color = Colors.pinkAccent
      ..style = PaintingStyle.fill;

    final Path square = Path()
      ..addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    final Path curve = Path();

    final Paint curvePaint = Paint()..style = PaintingStyle.fill;
    curvePaint.color = Colors.black;

    curve.moveTo(size.width, 0);
    curve.cubicTo(
      size.width,
      size.height,
      0,
      size.height,
      0,
      size.height,
    );
    curve.lineTo(size.width, size.height);
    curve.close();

    final Paint arcOrange = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.orange;

    final Path arcShape1 = Path()
      ..addArc(
          Rect.fromLTWH(
            0,
            0,
            size.width * 2,
            size.height * 2,
          ),
          pi / -2,
          pi);

    final Rect rec = Rect.fromLTWH(
      0,
      0,
      size.width * 2,
      size.height * 2,
    );

    final Paint arcBlack = Paint()
      ..shader = const LinearGradient(
        colors: [
          Colors.white,
          Colors.black,
        ],
        stops: [0, 1],
        begin: Alignment.topCenter,
      ).createShader(rec)
      ..style = PaintingStyle.fill
      ..color = Colors.black;

    final Path arcShape2 = Path()..addArc(rec, pi * 2, pi);

    final Paint arcGreen = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.greenAccent;

    final Path arcShape3 = Path()
      ..addArc(
        Rect.fromCircle(
          center: Offset.zero,
          radius: size.height,
        ),
        pi / 2,
        pi / 2,
      );

    // canvas.drawPath(arcShape1, arcOrange);
    // canvas.drawPath(arcShape2, arcBlack);
    canvas.drawArc(rec, pi * 3  / 2 , pi / 2, false, arcGreen);
    // canvas.drawPath(square, squarePaint);
    // canvas.drawPath(curve, curvePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
