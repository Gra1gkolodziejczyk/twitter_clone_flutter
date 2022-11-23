import 'package:flutter/material.dart';
import 'package:twitter_clone/widget/appButton.dart';

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
              SizedBox(height: 100),                
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ou", style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              AppButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                borderColor: Colors.black,
                text: "Créer ton compte",
                textColor: Colors.white,
                width: 200,
                height: 50,
                image: null,
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Vous avez déjà un compte ?",
                  ),
                  Text(" Connecter-vous", 
                    style: TextStyle( 
                      color: Colors.blue,

                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
