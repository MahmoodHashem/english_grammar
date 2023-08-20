import 'package:hive/hive.dart';

part 'Note.g.dart';

@HiveType(typeId: 1)
class Note {

  Note({required this.title, required this.details});

  @HiveField(0)
  String title;

  @HiveField(1)
  String details;

}
