import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/note_controller.dart';
import '../models/note.dart';

class AddNotePage extends StatelessWidget {
  final NoteController noteController = Get.find();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Catatan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Judul',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.teal[50],
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Deskripsi',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.teal[50],
              ),
              maxLines: 5,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty &&
                    descriptionController.text.isNotEmpty) {
                  Note newNote = Note(
                    title: titleController.text,
                    description: descriptionController.text,
                  );
                  noteController.addNote(newNote);
                  Get.back(); // Kembali ke halaman sebelumnya
                } else {
                  Get.snackbar(
                      'Error', 'Judul dan Deskripsi tidak boleh kosong',
                      snackPosition: SnackPosition.BOTTOM);
                }
              },
              child: Text('Simpan Catatan'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Menggunakan backgroundColor
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
