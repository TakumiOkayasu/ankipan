import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;
  
  static DatabaseHelper get instance => _instance;
  
  DatabaseHelper._internal();
  
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }
  
  // カードの削除
  Future<int> deleteCard(int id) async {
    Database db = await database;
    return await db.delete(
      'cards',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
  
  // デッキの削除
  Future<int> deleteDeck(int id) async {
    Database db = await database;
    return await db.delete(
      'decks',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
  
  // デッキに属するカードの取得
  Future<List<Map<String, dynamic>>> getCardsByDeckId(int deckId) async {
    Database db = await database;
    return await db.query(
      'cards',
      where: 'deck_id = ?',
      whereArgs: [deckId],
    );
  }
  
  // デッキの取得
  Future<List<Map<String, dynamic>>> getDecks() async {
    Database db = await database;
    return await db.query('decks');
  }
  
  // カードの追加
  Future<int> insertCard(Map<String, dynamic> card) async {
    Database db = await database;
    return await db.insert('cards', card);
  }
  
  // デッキの追加
  Future<int> insertDeck(Map<String, dynamic> deck) async {
    Database db = await database;
    return await db.insert('decks', deck);
  }
  
  // カードの更新
  Future<int> updateCard(Map<String, dynamic> card) async {
    Database db = await database;
    return await db.update(
      'cards',
      card,
      where: 'id = ?',
      whereArgs: [card['id']],
    );
  }
  
  // デッキの更新
  Future<int> updateDeck(Map<String, dynamic> deck) async {
    Database db = await database;
    return await db.update(
      'decks',
      deck,
      where: 'id = ?',
      whereArgs: [deck['id']],
    );
  }
  
  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'ankipan_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }
  
  Future<void> _onCreate(Database db, int version) async {
    // デッキテーブルの作成
    await db.execute('''
      CREATE TABLE decks(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        description TEXT,
        created_at TEXT NOT NULL,
        updated_at TEXT NOT NULL
      )
    ''');
    
    // カードテーブルの作成
    await db.execute('''
      CREATE TABLE cards(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        deck_id INTEGER NOT NULL,
        question TEXT NOT NULL,
        answer TEXT NOT NULL,
        created_at TEXT NOT NULL,
        updated_at TEXT NOT NULL,
        FOREIGN KEY (deck_id) REFERENCES decks (id) ON DELETE CASCADE
      )
    ''');
  }
}
