class Task {
  String title;
  String date;
  String time;

  bool isLate;
  bool isAlarmSet;
  bool isDone;

  Task({
    required this.title,
    required this.date,
    required this.time,
    required this.isLate,
    required this.isAlarmSet,
    required this.isDone,
  });
}