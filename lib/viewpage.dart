import 'package:flutter/material.dart';
import 'dart:async';
import 'Book.dart';
import 'database.dart';
import 'downloder.dart';

class VsjSqlite extends StatefulWidget {
  //final String title = "Sqlite Database";

  @override
  _VsjSqliteState createState() => _VsjSqliteState();
}

class _VsjSqliteState extends State<VsjSqlite> {
  String bookid = "", bookname = "", bookprice = "", message = "", id = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Scaffold(
            appBar: AppBar(
              title: Center(child: Text("Sqlite Database")),
              backgroundColor: Colors.teal,
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: Text("Add"),
                          onPressed: ()async {
                            try {
                              dynamic text = await Utilities.Downloaddata(
                                  "/shubhamgitvns/c790d76f25b1481514f829cced8373dd/raw/15ef8b9273019f2400df69cc43d873df515389ae/gistfile1.txt");
                              print(text);
                            }catch(ex){
                              print(ex);
                            }

                              // print("bn" + bookname);
                              // var javabook = Book(
                              //     int.parse(idcontroller.text),
                              //     namecontroller.text,
                              //     int.parse(pricecontroller.text));
                              //
                              // await DatabaseHandler.insertBook(javabook);
                              // print("Add");
                              // setState(() {
                              //   message = "Add";
                              //   id = idcontroller.text;
                              //   bookname = namecontroller.text;
                              //   bookprice = pricecontroller.text;
                              // });
                              // text_Clear();
                            }),

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("id"),
                      Text("bookname"),
                      Text("bookprice"),
                    ],
                  )
                ],
              ),
            ),
            // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ),
      ),
    );
  }
}
