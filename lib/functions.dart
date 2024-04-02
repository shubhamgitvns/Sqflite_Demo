// import 'package:flutter/material.dart';
//
// import 'database.dart';
// import 'Book.dart';
//
//
// Future<void> updateDog(Dog dog) async {
//   // Get a reference to the database.
//   final db = await database;
//
//   // Update the given Dog.
//   await db.update(
//     'dogs',
//     dog.toMap(),
//     // Ensure that the Dog has a matching id.
//     where: 'id = ?',
//     // Pass the Dog's id as a whereArg to prevent SQL injection.
//     whereArgs: [dog.id],
//   );
// }
//
// // Update Fido's age and save it to the database.
