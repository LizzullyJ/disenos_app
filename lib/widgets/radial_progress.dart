import 'dart:math';

import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {
  final double porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorPrimario;
  final double grosorSecundario;

  const RadialProgress({
    super.key,
    required this.porcentaje,
    this.colorPrimario = Colors.blue,
    this.colorSecundario = Colors.grey,
    this.grosorPrimario = 10,
    this.grosorSecundario = 4,
  });

  @override
  State<RadialProgress> createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late double porcentajeAnterior;

  @override
  void initState() {
    porcentajeAnterior = widget.porcentaje;
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward(
      from: 0.0,
    );
    final diferenciAnimar = widget.porcentaje - porcentajeAnterior;
    porcentajeAnterior = widget.porcentaje;

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Container(
            padding: const EdgeInsets.all(10),
            height: double.infinity,
            width: double.infinity,
            child: CustomPaint(
              painter: _MiRadialProgress(
                  porcentage: (widget.porcentaje - diferenciAnimar) +
                      (diferenciAnimar * controller.value),
                  colorPrimario: widget.colorPrimario,
                  colorSecundario: widget.colorSecundario,
                  grosorPrimario: widget.grosorPrimario,
                  grosorSecundario: widget.grosorSecundario),
            ));
      },
    );
  }
}

class _MiRadialProgress extends CustomPainter {
  final double porcentage;
  final Color colorPrimario;
  final Color colorSecundario;  
  final double grosorPrimario;
  final double grosorSecundario;
  _MiRadialProgress( {
    required this.porcentage,
    required this.colorPrimario,
    required this.colorSecundario,
    required this.grosorSecundario,
    required this.grosorPrimario,
  });
  @override
  void paint(Canvas canvas, Size size) {
    //Circulo completado
    final paint = Paint()
      ..strokeWidth = grosorSecundario
      ..color = colorSecundario
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width * 0.5, size.height * 0.5);
    double radio = min(size.width * 0.5, size.height * 0.5);
    canvas.drawCircle(center, radio, paint);

    //arco
    final paintArco = Paint()
      ..strokeWidth = grosorPrimario
      ..color = colorPrimario
      ..style = PaintingStyle.stroke;
    //parte que se debera ir llenando

    double arcAngle = 2 * pi * (porcentage / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radio), -pi / 2,
        arcAngle, false, paintArco);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
