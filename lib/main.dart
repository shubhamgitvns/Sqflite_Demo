import 'package:flutter/material.dart';
import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_demo/viewpage.dart';

import 'database.dart';
import 'downloder.dart';

void main() async  {
   await DatabaseHandler.initialize();
  try {
    print("text");

  } catch (ex) {

    print(ex);
  }
  runApp(VsjSqlite());
}