import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

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
                image: AssetImage('assets/images/screen2.png'),
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
          child: SliderButton(
            buttonColor: Colors.white,
            action: () {
              Navigator.pushNamed(context, '/home');
            },
            label: const Text(
              'Get Started',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: Center(
              child: Icon(
                Icons.arrow_forward,
                color: Color.fromARGB(255, 80, 188, 110),
                size: 34.0,
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.7,
            backgroundColor: Color.fromARGB(255, 46, 190, 105),
            highlightedColor: Color.fromARGB(255, 206, 205, 205),
            baseColor: Colors.white,
          ),
        ),
      ]),
    );
  }
}
