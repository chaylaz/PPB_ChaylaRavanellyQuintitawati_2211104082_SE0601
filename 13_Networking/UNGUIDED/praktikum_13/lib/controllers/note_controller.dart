import 'package:get/get.dart';
import '../models/note.dart';

class NoteController extends GetxController {
  var notes = <Note>[].obs;

  void addNote(Note note) {
    notes.add(note);
  }

  void deleteNote(int index) {
    notes.removeAt(index);
  }
}
