import 'package:flutter/material.dart';
import 'package:frutasdepiura_01/screens/index.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'FRUTAS',
                    style: GoogleFonts.ultra(
                      color: const Color.fromARGB(255, 24, 207, 7),
                      fontSize: 25,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Text(
                    ' DE PIURA',
                    style: GoogleFonts.ultra(
                      color: const Color.fromARGB(255, 3, 101, 7),
                      fontSize: 25,
                      letterSpacing: 1.5,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/mango.png',
                    scale: 7.8,
                  ),
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50).copyWith(
                      bottomLeft: const Radius.circular(50),
                    ),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 0, 0, 0),
                        Color.fromARGB(255, 62, 130, 64),
                      ],
                    ),
                  ),
                  child: Text(
                    'ENTER',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.8),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              // MaterialButton(
              //   minWidth: 250,
              //   height: 60,
              //   color: Colors.black87,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   onPressed: () {
              //     Navigator.pushReplacementNamed(context, 'login');
              //   },
              //   child: const Text(
              //     'ENTER',
              //     style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 16,
              //         fontWeight: FontWeight.bold,
              //         letterSpacing: 1.5),
              //   ),
              // ),
            ],
          ),
        )),
      ),
    );
  }
}
