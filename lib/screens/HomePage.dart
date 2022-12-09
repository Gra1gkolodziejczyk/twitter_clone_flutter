import 'package:flutter/material.dart';
import './Header.dart';
// import 'package:navigation_drawer/Header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
          body: Center(
        child: Header(),
      ));
}
