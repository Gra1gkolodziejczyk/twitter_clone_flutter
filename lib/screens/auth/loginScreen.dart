// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/auth/ResetPassword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/twitter.png',
          width: 45,
          height: 45,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 25, top: 15, right: 25),
              child: Column(
                children: const [
                  Text(
                    "Pour commencer, entrer votre numéro de téléphone, votre adresse email ou votre @nomdutilisateur",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText:
                          "Numéro de téléphone, adresse email ou nom d'utilisateur",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPassword()),
                      );
                    },
                    child: Text(
                      "Mot de passe oublié ?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10.0),
                      fixedSize: const Size(100, 20),
                      backgroundColor: Colors.grey,
                      textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      elevation: 10,
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: const Text(
                      "Suivant",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
