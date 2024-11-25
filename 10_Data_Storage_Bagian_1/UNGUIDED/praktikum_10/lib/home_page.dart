import 'package:flutter/material.dart';
import 'package:praktikum_10/helper/database_helper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _data = [];

  void _fetchData() async {
    final data = await DatabaseHelper().getBiodata();
    setState(() {
      _data = data;
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _navigateToForm() async {
    final result = await Navigator.pushNamed(context, '/form');
    if (result == true) _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Mahasiswa'),
        centerTitle: true, 
        backgroundColor: Colors.purple[600], 
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          final item = _data[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(item['nama']),
              subtitle: Text(
                  'NIM: ${item['nim']}\nAlamat: ${item['alamat']}\nHobi: ${item['hobi']}'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToForm,
        child: Icon(Icons.add),
      ),
    );
  }
}
