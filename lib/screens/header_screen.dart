import 'package:disenos_app/widgets/headers.dart';
import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(95, 95, 95, 1),
      body: HeaderWaves(),
    );
  }
}
