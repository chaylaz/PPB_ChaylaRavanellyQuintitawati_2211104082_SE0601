import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

// Factory constructor for mengembalikan instance singleton
  factory DatabaseHelper() {
    return _instance;
  }

// Private constructor for
  DatabaseHelper._internal();

// Getter untuk database
  Future<Database> get database async {
    if (_database != null) return _database!;
    {
      _database = await _initDatabase();
      return _database!;
    }
  }

// Inisialisasi database
  Future<Database> _initDatabase() async {
    // mendapatkan path database
    String path = join(await getDatabasesPath(), 'my_prakdatabase.db');
    // membuka database
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

// Membuat tabel saat db pertama kali dibuat
  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE my_table(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      title TEXT,
      description TEXT,
      createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)
  ''');
  }

// metode untuk memasukkan data ke dalam tabel
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await database;
    return await db.insert('my_table', row);
  }

// metode untuk mengambil semua data dari tabel
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await database;
    return await db.query('my_table');
  }

// membuat  metode untuk memperbarui data dalam tabel.
  Future<int> update(Map<String, dynamic> row) async {
      Database db = await database;
      int id = row['id'];
      return await db.update('my_table', row, where: 'id = ?', whereArgs: [id]);
    }

//  metode untuk menghapus data dari tabel.
  Future<int> delete(int id) async {
    Database db = await database;
    return await db.delete('my_table', where: 'id = ?', whereArgs: [id]);
  } 
}
