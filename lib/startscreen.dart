import 'package:ali/homescreen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: screenSize.height * 0.1,
            left: screenSize.width * 0.3,
            child: Image.asset('images/timer.png', height: 50),
          ),
          Positioned(
            top: screenSize.height * 0.15,
            right: screenSize.width * 0.3,
            child: Image.asset('images/calender.png', height: 30),
          ),
          Positioned(
            top: screenSize.height * 0.23,
            left: screenSize.width * 0.2,
            child: Image.asset('images/tasks.png', height: 25),
          ),
          Positioned(
            top: screenSize.height * 0.44,
            left: screenSize.width * 0.2,
            child: Image.asset('images/cup.png', height: 20),
          ),
          Positioned(
            top: screenSize.height * 0.39,
            left: screenSize.width * 0.25,
            child: Image.asset('images/flowers.png', height: 50),
          ),

          Positioned(
            top: screenSize.height * 0.29,
            right: screenSize.width * 0.31,
            child: Image.asset('images/shelfs1.png', height: 50),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 3),
                Image.asset('images/girl.png', height: screenSize.height * 0.3),

                const SizedBox(height: 32),

                // The Title Text
                const Text(
                  'Task Management \n& To-Do List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(36, 37, 44, 1),
                  ),
                ),

                const SizedBox(height: 16),

                Text(
                  'This productive tool is designed to help\n you better manage your task \nproject-wise conveniently!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF5A5A5A),
                    height: 1.5,
                  ),
                ),

                const Spacer(flex: 3),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homescreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF007AFF),
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 24,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 5,
                      shadowColor: Colors.blue,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Let's Start",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
