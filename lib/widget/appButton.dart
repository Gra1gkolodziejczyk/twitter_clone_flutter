import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final String? image;
  double width;
  double height;
  final Function onPressed;

  AppButton(
      {Key? key,
      required this.backgroundColor,
      required this.borderColor,
      required this.image,
      required this.text,
      required this.textColor,
      required this.width,
      required this.height,
      required this.onPressed,
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [Image.asset(
          "assets/`$image`.png", 
          width: 50, 
          height: 50,
        ),
        Text("Continuer avec `$text`", 
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        ],
      ),
    );
  }
}
