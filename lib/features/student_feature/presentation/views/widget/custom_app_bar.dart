import 'package:flutter/material.dart';

import '../../../../note_feature/presentation/views/widgets/custom_search_icon.dart';
import 'student_card_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StudentCardItem(),
                ),
              );
            },
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 25,
                backgroundImage:
                    AssetImage('assets/images/channels4_profile.jpg'),
              ),
            ),
          ),
          const Spacer(),
          const Text(
            "Mohamed Naif ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          CustomSearchIcon(
            onTap: () {},
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
