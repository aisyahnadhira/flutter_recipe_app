import 'package:flutter/material.dart';
import 'package:recipe_app/pages/main_screen.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Positioned(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/screen4.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.63,
          left: MediaQuery.of(context).size.width * 0.11,
          child: Text(
            'Cooking Experience\nLike a Chef',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.74,
          left: MediaQuery.of(context).size.width * 0.16,
          child: Text(
            'Let\'s make a delicious dish with\nthe best recipe for the family',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 10,
                    color: Colors.white38,
                    offset: Offset(0, 0),
                  ),
                ]),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.83,
          left: MediaQuery.of(context).size.width * 0.15,
          child: ConfirmationSlider(
            width: 250,
            iconColor: Colors.black12,
            backgroundColor: Color.fromARGB(255, 253, 108, 24),
            backgroundColorEnd: Colors.grey[350],
            foregroundColor: Color.fromARGB(255, 233, 170, 119),
            text: "\t\t\t\t\t\tGet Started",
            textStyle: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            onConfirmation: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen())),
          ))
      ]),
    );
  }
}
