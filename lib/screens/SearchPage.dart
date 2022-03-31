import 'package:book_app/components/feed.dart';
import 'package:book_app/data.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 193, 193, 193),
            ),
            child: TextField(
              cursorHeight: 25,
              style: TextStyle(fontSize: 20.0),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(5.0),
              ),
            ),
          ),
        ),
        body: Feed(
          books: books,
        ));
  }
}
