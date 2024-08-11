import 'package:flutter/material.dart';
import 'package:note_app/features/student_feature/presentation/views/widget/custom_app_bar.dart';

import '../../../../note_feature/presentation/views/widgets/note_list_view.dart';


class StudentViewBody extends StatelessWidget {
  const StudentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
