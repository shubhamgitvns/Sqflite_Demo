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
  TextEditingController idcontroller = TextEditingController();
  String bookid = "", bookname = "", bookprice = "", message = "", id = "";
  String rollno="21", name="shubham",price="123456789";

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
                  Text(message),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: Text("Add"),
                          onPressed: ()async {
                              dynamic text = await Utilities.Downloaddata(
                                  "/shubhamgitvns/c790d76f25b1481514f829cced8373dd/raw/15ef8b9273019f2400df69cc43d873df515389ae/gistfile1.txt");
                              print(text);
                             id="${text["data"]["id"]}";
                             bookname="${text["data"]["book"]}";
                             bookprice="${text["data"]["price"]}";
                              print("bn" + bookname);
                              var javabook = Book(
                                  int.parse(id),
                                  bookname,
                                  int.parse(bookprice));
                              await DatabaseHandler.insertBook(javabook);
                              print("Add");
                              setState(() {
                                message = "Add";
                              });


                            }),

                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(id),
                      Text(bookname),
                      Text(bookprice),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 60,
                        child: TextField(
                          onChanged: (value) {
                            bookid = value;
                          },
                          controller: idcontroller,
                        ),
                      ),
                      ElevatedButton(
                          child: Text("Search"),
                          onPressed: () async {
                            print("Search");
                            var list= await DatabaseHandler.books();
                            List<Book> lst=list;
                            lst=   lst.where((element) => element.id==int.parse(bookid)).toList();
                            if(lst.length<=0) {
                              bookname = "";
                              bookprice="";
                              message = "Not Found";
                            }
                            else
                            {
                              print(list);
                              message="Found";
                              Book book=lst.first;
                              bookname=book.name;
                              bookprice=book.price.toString();
                            }
                            setState(() {

                            });
                          }),
                    ],
                  ),

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
