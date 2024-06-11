class Note {
  
  String noteID = '';

  String title = '';
  String content = '';
  String date = '';
  String imagePath = '';
  String audioPath = '';

  bool isNewNote = true;
  bool isPinned = false;

  Note({
    required this.noteID,
    required this.title,
    required this.content,
    required this.date,
    required this.imagePath,
    required this.audioPath,
    required this.isNewNote,
    required this.isPinned,
  });
}