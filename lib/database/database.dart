import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import './model/entry.dart';

import 'package:path/path.dart';

import 'package:sqflite/sqflite.dart';

import 'package:flutter/services.dart' show rootBundle;


class DBHelper {

  String queryText = "k";

  Future<Database> get db async {

    print('start');

    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "c46.db");

    // try opening (will work if it exists)
    Database db;
    try {
      db = await openDatabase(path, readOnly: true);
    } catch (e) {
      print("Error $e");
    }

    if (db == null) {
      // Should happen only the first time you launch your application
      print("Creating new copy from asset");

      // Copy from asset
      ByteData data = await rootBundle.load(join("assets", "c46.db"));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);

      // open the database
      db = await openDatabase(path, readOnly: true);
    } else {
      print("Opening existing database");
    }

    return db;
  }

  Future<List<Entry>> getAllEntries() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM c46');
    List<Entry> allEntries = new List();

    for (int i = 0; i < list.length; i++) {
      allEntries.add(new Entry(list[i]["id"], list[i]["fulltext"], list[i]["type"], list[i]["section"], list[i]["pinpoint"]));
    }
    print(allEntries.length);

    return allEntries;
  }

  Future<List<Entry>> getQueryResults(String searchTerms) async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM c46 WHERE fulltext LIKE "%' + searchTerms +'%"');
    List<Entry> queryResults = new List();

    for (int i = 0; i < list.length; i++) {
      queryResults.add(new Entry(list[i]["id"], list[i]["fulltext"], list[i]["type"], list[i]["section"], list[i]["pinpoint"]));
    }
    print(queryResults.length);

    return queryResults;
  }


}