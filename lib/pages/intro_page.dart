import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              //logo
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  'lib/images/logo2.png',
                  height: 240,
                ),
              ),

              //title
              const Text(
                'Run for it!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),

              //sub-title
              const Text(
                'Customized sneakers with premium quality.',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),

              //start button
              Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child:
                      Text('SHOP NOW', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
