// ignore_for_file: unused_import

import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

///write this in yaml file under dependencies:
///sqflite: ^2.3.3+1
///sqflite_common_ffi_web: ^0.4.3+1

class SqlHelper {
  Database? db;
  SqlHelper() {
    init();
  }

  void createTables() async {
    try {
      await db!.execute("""
  CREATE TABLE IF NOT EXISTS sales (
    id INTEGER PRIMARY KEY ,
    name String,
    price INTEGER,
    quantity INTEGER
    category String,
    
  )""");
    } catch (e) {
      print('ERROR in creating table: $e');
    }
  }

  void init() async {
    try {
      if (kIsWeb) {
        var factory = databaseFactoryFfiWeb;
        db = await factory.openDatabase('pose.db');
        //if database created successfully, delete this part
        var sqliteVersion =
            (await db!.rawQuery('select sqlite_version()')).first.values.first;
        print(sqliteVersion); //should print 3.39.3
        //-------------------------------------------------------
      } else {
        var db = await openDatabase(
          'pos.db',
          version: 1,
          onCreate: (db, version) {
            print('success');
          },
        );
        print('>>>>>>>>>>>>${db.hashCode}');
      }
    } catch (e) {
      print('Error $e}');
    }
  }
}
