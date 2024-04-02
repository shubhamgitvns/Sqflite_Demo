import 'package:flutter/material.dart';
import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_demo/viewpage.dart';

import 'database.dart';

void main() async {
  await DatabaseHandler.initialize();
  runApp(VsjSqlite());
}