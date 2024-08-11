import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudentCardItem extends StatelessWidget {
  const StudentCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.5,
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  const CircleAvatar(
                    radius: 50,
                    child: CircleAvatar(
                      radius: 46,
                      backgroundImage:
                          AssetImage('assets/images/channels4_profile.jpg'),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Mohamed Naif ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '01220115401',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'connecting with me ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  IconButton(
                      icon: const Icon(
                        (FontAwesomeIcons.whatsapp),
                        size: 35,
                        color: Colors.green,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
