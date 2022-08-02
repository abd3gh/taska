import 'dart:developer';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DbHelper{
  DbHelper._();
  static DbHelper dbHelper = DbHelper._();
  static const String TableName = 'tasks';
  static const String taskIdColumName = 'id';
  static const String taskNameColumName = 'tasksName';
  static const String taskIsCompleteColumName = 'tasksComplete';
  Database? database;
  initDatabase()async{
    database = await createConnectionWithDatabase();
  }
  Future<Database> createConnectionWithDatabase()async{
    String databasePath = await getDatabasesPath();
    String databaseName = 'tasks.db';
    String fullPath = join ( databasePath , databaseName);
    Database database = await openDatabase(fullPath,version: 1,onCreate: (db,i){
      log('create table');
      db.execute('''
      CREATE TABLE $TableName (
      $taskIdColumName INTEGER PRIMARY KEY AUTOINCREMENT,
      $taskNameColumName TEXT,
      $taskIsCompleteColumName INTEGER)
      ''');
    },onOpen: (db){
      log('hello , open DB');
    });
    return database;
  }

  insertNewTask()async{
    int rowIndex = await database!.insert(TableName, {});
  }
}