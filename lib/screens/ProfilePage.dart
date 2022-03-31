import 'package:book_app/screens/AddBookPage.dart';
import 'package:book_app/screens/BookPage.dart';
import 'package:flutter/material.dart';
import '../components/feed.dart';
import '../data.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            color: Theme.of(context).scaffoldBackgroundColor,
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddBookPage()));
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.maxFinite,
        //  width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
              child: SizedBox(
                  height: 240,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: CircleAvatar(
                              radius: 18,
                              foregroundColor: Colors.black87,
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              child: Icon(Icons.person)),
                        ),
                        Text(
                          "Gencehan Arpaçay",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10), //
                        Text(
                          "email@email.com",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Books",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
            Feed(
              books: books,
            )
          ]),
        ),
      ),
    );
  }
}
