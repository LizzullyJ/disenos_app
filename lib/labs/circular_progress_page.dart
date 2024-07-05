import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class CilcularProgressPage extends StatefulWidget {
  const CilcularProgressPage({super.key});

  @override
  State<CilcularProgressPage> createState() => _CilcularProgressPageState();
}

class _CilcularProgressPageState extends State<CilcularProgressPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  double porcentage = 0.0;
  double newPorcentage = 0.0;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    controller.addListener(() {
      //print('😀Valor controller: ${controller.value}');
      setState(() {
        porcentage = lerpDouble(porcentage, newPorcentage, controller.value)!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(5),
          width: 300,
          height: 300,
          // color: Colors.pink.shade100,
          child: CustomPaint(
            painter: _MiRadialProgress(porcentage),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          porcentage = newPorcentage;
          newPorcentage += 10.0;
          if (newPorcentage > 100.0) {
            newPorcentage = 0.0;
            porcentage = 0;
          }
          controller.forward(from: 0.0);
          setState(() {});
        },
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class _MiRadialProgress extends CustomPainter {
  final porcentage;
  _MiRadialProgress(this.porcentage);
  @override
  void paint(Canvas canvas, Size size) {
    //Circulo completado
    final paint = Paint()
      ..strokeWidth = 4
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width * 0.5, size.height * 0.5);
    double radio = min(size.width * 0.5, size.height * 0.5);
    canvas.drawCircle(center, radio, paint);

    //arco
    final paintArco = Paint()
      ..strokeWidth = 10
      ..color = Colors.cyan
      ..style = PaintingStyle.stroke;
    //parte que se debera ir llenando

    double arcAngle = 2 * pi * (porcentage / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radio), -pi / 2,
        arcAngle, false, paintArco);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
