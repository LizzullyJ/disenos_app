import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAB),
    );
  }
}

class HeaderBorderRedondeados extends StatelessWidget {
  const HeaderBorderRedondeados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70), bottomRight: Radius.circular(70)),
        color: Color(0xff615AAB),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //lapiz para pintar
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
//Dibujar el path y el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangulo extends StatelessWidget {
  const HeaderTriangulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderTrianguloPainter(),
      ),
    );
  }
}

class _HeaderTrianguloPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //lapiz para pintar
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
//Dibujar el path y el lapiz
    //path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  const HeaderPico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //lapiz para pintar
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
//Dibujar el path y el lapiz
    path.moveTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //lapiz para pintar
    paint.color = Color.fromARGB(255, 197, 166, 243);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
//Dibujar el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    // path.lineTo(size.width, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.45, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWave extends StatelessWidget {
  const HeaderWave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //lapiz para pintar
    paint.color = Color.fromARGB(255, 166, 236, 253);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
//Dibujar el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    // path.lineTo(size.width, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaves extends StatelessWidget {
  const HeaderWaves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(painter: _HeaderWavesPainter()),
      ),
      Container(
        width: double.infinity,
        height: double.infinity,
        //color: Color(0xff615AAB),
        child: CustomPaint(painter: _HeaderWavesPainter2()),
      ),
      Container(
        width: double.infinity,
        height: double.infinity,
        //color: Color(0xff615AAB),
        child: CustomPaint(painter: _HeaderWavesPainter3()),
      ),
    ]);
  }
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //lapiz para pintar
    paint.color = Color.fromRGBO(252, 141, 43, 0.38);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
//Dibujar el path y el lapiz
    path.moveTo(0, size.height * 1);
    path.lineTo(0, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.98,
        size.width * 0.5, size.height * 0.9);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.82, size.width, size.height * 0.9);
    path.lineTo(size.width, size.height * 1);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderWavesPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //lapiz para pintar
    paint.color = Color.fromRGBO(252, 155, 71, 0.282);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
//Dibujar el path y el lapiz
    path.moveTo(0, size.height * 1);
    path.lineTo(0, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.82,
        size.width * 0.4, size.height * 0.9);
    path.quadraticBezierTo(
        size.width * 0.6, size.height * 0.98, size.width, size.height * 0.88);
    path.lineTo(size.width, size.height * 1);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderWavesPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); //lapiz para pintar
    paint.color = Color.fromRGBO(237, 128, 32, 0.58);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
//Dibujar el path y el lapiz
    path.moveTo(0, size.height * 1);
    path.lineTo(0, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.77,
        size.width * 0.6, size.height * 0.9);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.95, size.width, size.height * 0.97);
    path.lineTo(size.width, size.height * 1);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderGradient extends StatelessWidget {
  const HeaderGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderGradientPainter(),
      ),
    );
  }
}

class _HeaderGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(center: Offset(0.0, 55.0), radius: 180);
    final Gradient gradient = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 230, 254, 194),
          Color.fromARGB(255, 172, 248, 101),
          Color.fromARGB(255, 148, 255, 49),
        ],
        stops: [
          0.2,
          0.5,
          1
        ]);
    final paint = Paint()
      ..shader = gradient.createShader(rect); //lapiz para pintar
    paint.color = Color.fromARGB(255, 218, 253, 166);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
//Dibujar el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    // path.lineTo(size.width, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
