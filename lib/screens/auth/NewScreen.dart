import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/auth/Register.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 30, left: 30),
          child: Column(
            children: [
              Image.asset(
                "assets/twitter.png",
                height: 35,
                width: 35,
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Découvrez ce qui se passe dans le monde en temps réel.",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 80),
              Center(
                child: ElevatedButton.icon(
                  icon: Image.asset(
                    "assets/google.png",
                    width: 20,
                    height: 20,
                  ),
                  label: const Text(
                    "Continuer avec Google",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    fixedSize: const Size(280, 50),
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    elevation: 15,
                    side: const BorderSide(
                      color: Colors.white,
                      width: 10,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton.icon(
                  icon: Image.asset(
                    "assets/apple.png",
                    width: 20,
                    height: 20,
                  ),
                  label: const Text(
                    "Continuer avec Apple",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    fixedSize: const Size(280, 50),
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    elevation: 15,
                    side: const BorderSide(
                      color: Colors.white,
                      width: 10,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Ou",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  fixedSize: const Size(280, 50),
                  backgroundColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  elevation: 15,
                  side: const BorderSide(
                    color: Colors.black,
                    width: 10,
                  ),
                ),
                child: const Text(
                  "Creer un compte",
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Vous avez déjà un compte ?",
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      " Connecter-vous",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
