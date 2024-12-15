import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/note_controller.dart';
import 'add_note_page.dart';

class HomePage extends StatelessWidget {
  final NoteController noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Daftar Catatan',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.teal, // Menggunakan warna hijau yang sama
      ),
      body: Container(
        color: Colors.teal[50], // Latar belakang hijau muda
        child: Obx(() {
          return noteController.notes.isEmpty
              ? Center(
                  child: Text('Tidak ada catatan. Tambahkan catatan baru!'))
              : ListView.builder(
                  itemCount: noteController.notes.length,
                  itemBuilder: (context, index) {
                    final note = noteController.notes[index];
                    return Card(
                      margin: EdgeInsets.all(8.0),
                      elevation: 4,
                      child: ListTile(
                        title: Text(
                          note.title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(note.description),
                        trailing: IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            noteController.deleteNote(index);
                          },
                        ),
                      ),
                    );
                  },
                );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddNotePage());
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
