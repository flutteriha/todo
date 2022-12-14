import 'package:hive/hive.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 1)
class ToDo {
  @HiveField(0)
  String title;

  @HiveField(1)
  String desc;

  @HiveField(2)
  bool isDone;

  ToDo(this.title, this.desc, this.isDone);
}
