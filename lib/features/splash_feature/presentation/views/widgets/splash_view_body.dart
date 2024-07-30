import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/features/note_feature/presentation/views/notes_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
   @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const NotesView()));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Image.asset(
          'assets/images/channels4_profile.jpg',
          fit: BoxFit.fill,
        ), // Replace with your splash image
      ),
    );
  }
}
