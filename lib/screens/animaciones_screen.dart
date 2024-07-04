import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimacionesScreen extends StatelessWidget {
  const AnimacionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  const CuadradoAnimado({
    Key? key,
  }) : super(key: key);

  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? rotacion;
  Animation<double>? opacidad;
  Animation<double>? moverDerecha;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 4000));

    rotacion = Tween(begin: 0.0, end: 2.0 * Math.pi)
        .animate(CurvedAnimation(parent: controller!, curve: Curves.easeOut));

    opacidad = Tween(begin: 0.1, end: 1.0).animate(CurvedAnimation(
        parent: controller!,
        curve: const Interval(0, 0.25, curve: Curves.easeOut)));

    moverDerecha = Tween(begin: 0.0, end: 200.0).animate(controller!);

    controller!.addListener(() {
      //  print('Status: ${controller!.status}');
      if (controller!.status == AnimationStatus.completed) {
        //controller!.reverse();
        controller!.reset();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Play
    controller!.forward();
    return AnimatedBuilder(
      animation: controller!,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget? child) {
        // print(rotacion!.value);
        return Transform.translate(
          offset: Offset(moverDerecha!.value, 0),
          child: Transform.rotate(
            angle: rotacion!.value,
            child: Opacity(
              opacity: opacidad!.value,
              child: child,
            ),
          ),
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: Colors.purple.shade400),
    );
  }
}
