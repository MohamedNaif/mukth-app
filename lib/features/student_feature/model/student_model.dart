import 'package:hive_flutter/hive_flutter.dart';
import '../../note_feature/model/note_model.dart';


part 'student_model.g.dart';

@HiveType(typeId: 1)
class StudentModel extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  String phone;

  @HiveField(2)
  String imagePath;

  @HiveField(3)
  List<NoteModel> notes;

  StudentModel({
    required this.name,
    required this.phone,
    required this.imagePath,
    required this.notes,
  });
}
