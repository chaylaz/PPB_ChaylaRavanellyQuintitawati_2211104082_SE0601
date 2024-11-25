import 'package:flutter/material.dart';
import 'package:praktikum_10/helper/database_helper.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _alamatController = TextEditingController();
  final _hobiController = TextEditingController();

  // Fungsi untuk menyimpan data ke SQLite
  void _saveData() async {
    if (_formKey.currentState!.validate()) {
      // Buat map data untuk dimasukkan ke database
      Map<String, dynamic> biodata = {
        'nama': _namaController.text,
        'nim': _nimController.text,
        'alamat': _alamatController.text,
        'hobi': _hobiController.text,
      };

      // Simpan data menggunakan DatabaseHelper
      int result = await DatabaseHelper().insertBiodata(biodata);

      // Cek apakah data berhasil disimpan
      if (result > 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Biodata berhasil disimpan!')),
        );
        Navigator.pop(context, true); // Kembali ke halaman utama
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Gagal menyimpan biodata!')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Biodata Mahasiswa'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: InputDecoration(labelText: 'Nama'),
                validator: (value) =>
                    value!.isEmpty ? 'Nama wajib diisi' : null,
              ),
              TextFormField(
                controller: _nimController,
                decoration: InputDecoration(labelText: 'NIM'),
                validator: (value) => value!.isEmpty ? 'NIM wajib diisi' : null,
              ),
              TextFormField(
                controller: _alamatController,
                decoration: InputDecoration(labelText: 'Alamat'),
                validator: (value) =>
                    value!.isEmpty ? 'Alamat wajib diisi' : null,
              ),
              TextFormField(
                controller: _hobiController,
                decoration: InputDecoration(labelText: 'Hobi'),
                validator: (value) =>
                    value!.isEmpty ? 'Hobi wajib diisi' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveData, // Memanggil fungsi simpan
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
