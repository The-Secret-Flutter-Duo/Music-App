import 'package:flutter/material.dart';
import 'package:appli_music/delayed_animation.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.pinkAccent,
          margin: const EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 120,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  height: 30,
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 0,
                  ),
                  child: const Text('Bienvenue sur Music App'),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  height: 200,
                  margin: const EdgeInsets.only(
                    top: 70,
                    bottom: 0,
                  ),
                  child: Image.asset('images/music.jpg'),
                ),
              ),
              DelayedAnimation(
                  delay: 3500,
                  child: Container(
                    color: Colors.blue,
                    height: 30,
                    width: 140,
                    margin: const EdgeInsets.only(
                      top: 70,
                      bottom: 0,
                    ),
                    child: Text(
                      'Votre application musique',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Colors.black12, fontSize: 16),
                    ),
                  )),
              DelayedAnimation(
                  delay: 4500,
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                      top: 70,
                      bottom: 0,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(),
                      child: Text('Get Started'),
                      onPressed: () {},
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
