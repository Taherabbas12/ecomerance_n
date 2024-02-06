import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path; // استيراد مكتبة path

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static late Database _database;

  DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final databasePath =
        path.join(dbPath, 'products.db'); // استخدام الدالة join من مكتبة path

    return await openDatabase(databasePath, version: 1,
        onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE products (
          id INTEGER PRIMARY KEY,
          id_product TEXT,
          quantity INTEGER,
          price REAL
        )
      ''');
    });
  }

  Future<int> insertProduct(Map<String, dynamic> product) async {
    final db = await database;
    return await db.insert('products', product);
  }

  Future<int> updateProduct(Map<String, dynamic> product) async {
    final db = await database;
    return await db.update('products', product,
        where: 'id = ?', whereArgs: [product['id']]);
  }

  Future<int> deleteProduct(int id) async {
    final db = await database;
    return await db.delete('products', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> getAllProducts() async {
    final db = await database;
    return await db.query('products');
  }
}
