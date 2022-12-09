import 'package:flutter/material.dart';
import 'screens/HomePage.dart';
import 'screens/Profil.dart';
import 'screens/Sujets.dart';
import 'screens/Signets.dart';
import 'screens/Listes.dart';
import 'screens/CercleTwitter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomePage(),
          '/Profil': (context) => const Profil(
                title: 'Profil',
              ),
          '/Sujets': (context) => const Sujets(
                title: 'Sujets',
              ),
          '/Signets': (context) => const Signets(
                title: 'Signets',
              ),
          '/Listes': (context) => const Listes(
                title: 'Listes',
              ),
          '/CercleTwitter': (context) => const CercleTwitter(
                title: 'CercleTwitter',
              ),
        },
        initialRoute: '/');
  }
}
