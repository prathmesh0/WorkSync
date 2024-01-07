import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 50,
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.6,
                    fontFamily: 'Roboto',

                    shadows: [
                      Shadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  children: [
                    const TextSpan(
                      text: 'W',
                      style: TextStyle(
                        color: Color.fromARGB(255, 9, 81, 137),
                        fontSize: 40, 
                      ),
                    ),
                    TextSpan(
                      text: 'o',
                      style: TextStyle(
                        color: Colors.blue.shade600,
                        fontSize: 35, 
                      ),
                    ),
                    TextSpan(
                      text: 'r',
                      style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 33, 
                      ),
                    ),
                    TextSpan(
                      text: 'k',
                      style: TextStyle(
                        color: Colors.blue.shade400,
                        fontSize: 31, 
                      ),
                    ),
                    TextSpan(
                      text: 'S',
                      style: TextStyle(
                        color: Colors.blue.shade300,
                        fontSize: 35, 
                      ),
                    ),
                    TextSpan(
                      text: 'y',
                      style: TextStyle(
                        color: Colors.blue.shade400,
                        fontSize: 32, 
                      ),
                    ),
                    TextSpan(
                      text: 'n',
                      style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 33, 
                      ),
                    ),
                    TextSpan(
                      text: 'c',
                      style: TextStyle(
                        color: Colors.blue.shade600,
                        fontSize: 35, 
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 300,
              width: 450,
              child: Image.asset(
                'assets/images/mainimage.png',
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20), 
            Container(
              width: 400, 
              height: 50,
              alignment: Alignment.center,
              child: Text(
                'Empower Your Team with Effortless Employee Management',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.5,
                  wordSpacing: 2.0,
                  shadows: [
                    Shadow(
                      color: Colors.grey.shade400,
                      blurRadius: 2,
                      offset: const Offset(1, 1),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 70),

            SizedBox(
              width: 340,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2D4990),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(25), 
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
