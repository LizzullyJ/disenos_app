import 'package:disenos_app/widgets/radial_progress.dart';
import 'package:flutter/material.dart';

class GraficasCircularesPage extends StatefulWidget {
  const GraficasCircularesPage({Key? key}) : super(key: key);

  @override
  State<GraficasCircularesPage> createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  double porcentaje = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomRadialProgress(
                    porcentaje: porcentaje, colorPrimario: Colors.pink),
                CustomRadialProgress(
                    porcentaje: porcentaje, colorPrimario: Colors.lime),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomRadialProgress(
                    porcentaje: porcentaje, colorPrimario: Colors.cyan),
                CustomRadialProgress(
                    porcentaje: porcentaje, colorPrimario: Colors.purple),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            porcentaje += 10;
            if (porcentaje > 100) {
              porcentaje = 0;
            }
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class CustomRadialProgress extends StatelessWidget {
  const CustomRadialProgress({
    super.key,
    required this.porcentaje,
    this.colorPrimario = Colors.blue,
    this.colorSecundario = Colors.grey,
    this.grosorPrimario = 10,
    this.grosorSecundario = 4,
  });

  final double porcentaje;

  final Color? colorPrimario;
  final Color? colorSecundario;
  final double? grosorPrimario;
  final double? grosorSecundario;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 180,
        width: 180,
        child: RadialProgress(
          porcentaje: porcentaje,
          colorPrimario: colorPrimario!,
          colorSecundario: colorSecundario!,
          grosorPrimario: grosorPrimario!,
          grosorSecundario: grosorSecundario!,
        ));
  }
}
