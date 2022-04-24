import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_rounded,
                        color: Colors.grey, size: 28),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Salmon Sushi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      icon:
                          Icon(Icons.more_horiz, color: Colors.grey, size: 28),
                      onPressed: () {}),
                ],
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/sushi2.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.075,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 145, 121, 111),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Icon(Icons.play_arrow_rounded,
                            color: Colors.white, size: 32),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ingredients(12)',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 253, 93, 1),
                        Color.fromARGB(255, 236, 146, 42),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "1 Serving",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.white,
                            size: 32,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Box(context, 'assets/images/matcha.png', "Matcha", "1 teaspoon"),
              SizedBox(height: 20),
              Box(context, 'assets/images/rice.png', "Rice Bowl", "200 gr"),
              SizedBox(height: 20),
              Box(context, 'assets/images/salmon.png', "Salmon", "400 gr"),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Start Cook!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container Box(
      BuildContext context, String image, String name, String ingredients) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width - 65,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(image, height: 50, width: 50),
            Spacer(flex: 1),
            Text(
              name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              ingredients,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
