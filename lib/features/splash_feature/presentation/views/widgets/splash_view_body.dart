import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/features/home/presentation/views/home_view.dart';
// import 'package:note_app/features/note_feature/presentation/views/notes_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 8),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const HomeView(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Image.asset(
            'assets/images/channels4_profile.jpg',
            fit: BoxFit.fill,
          ), // Replace with your splash image
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.7,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.9,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Color.fromARGB(255, 134, 77, 21),
                  fontSize: 19.0,
                  fontFamily: 'Agne',
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                          textAlign:
                              TextAlign.right, // Aligns the text to the right
                          speed: const Duration(milliseconds: 55),
                          'قال رسول الله صلى الله عليه وسلم:الماهر بالقرآن مع السفرة الكرام البررة، والذي يقرأ القرآن ويتتعتع فيه وهو عليه شاق له أجران'),
                    ],
                    isRepeatingAnimation: false,
                    // onTap: () {
                    //   print("Tap Event");
                    // },
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
