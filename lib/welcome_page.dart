import 'package:flutter/material.dart';
import 'package:appli_music/delayed_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:appli_music/search_results.dart';
import 'package:appli_music/search_results.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8E9F3),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFE8E9F1),
          margin: const EdgeInsets.symmetric(
            vertical: 90,
            horizontal: 40,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  height: 30,
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 0,
                  ),
                  child: const Text('Bienvenue sur Music App'),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  height: 280,
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
                      child: Container(
                        color: Color(0xFFE8E9F1),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.pink,
                              //shape: (),
                            ),
                            child: Text('Get Started'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SearchResultsPage()),
                              );
                            }),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
