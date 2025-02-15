
import 'package:disenos_app/screens/graficas_circulares_page.dart';
import 'package:flutter/material.dart';

//import 'package:disenos_app/screens/animaciones_screen.dart';
//import 'package:disenos_app/screens/header_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: GraficasCircularesPage()
    );
  }
}
