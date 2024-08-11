import 'package:flutter/material.dart';
import 'package:note_app/features/note_feature/presentation/views/notes_view.dart';

import '../../../../student_feature/presentation/views/student_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<int> gridItems = []; // List to hold grid items
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            gridItems.add(gridItems.length + 1); // Add new item to the list
          });
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
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
              color: const Color.fromARGB(112, 176, 105, 34),
            ),
            CustomGridView(gridItems: gridItems),
          ],
        ),
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.gridItems,
  });

  final List<int> gridItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
          childAspectRatio: 1, // Aspect ratio of each item (width/height)
        ),
        itemCount: gridItems.length, // Number of items in the grid
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const StudentView(),
                ),
              );
            },
            child: const CustomCardItem(),
          );
        },
      ),
    );
  }
}

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Color.fromARGB(140, 0, 0, 0),
      child: Column(
        children: [
          Spacer(),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/channels4_profile.jpg'),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Mohamed Naif ',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            '01220115401',
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
