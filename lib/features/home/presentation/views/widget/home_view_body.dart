import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/png-transparent-gray-background-gray-decorative-pattern-background.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            Container(
              color:const  Color.fromARGB(134, 4, 5, 33),
            ),
            
          ],
        ),
      ),
    );
  }
}
