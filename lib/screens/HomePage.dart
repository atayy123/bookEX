import 'package:book_app/components/feed.dart';
import 'package:flutter/material.dart';
import '../data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text(
            "bookEX",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).scaffoldBackgroundColor),
          ),
          // actions: [
          //   IconButton(
          //     color: Theme.of(context).scaffoldBackgroundColor,
          //     icon: Icon(Icons.send),
          //     onPressed: () {},
          //     //  splashRadius: SizeConfig.safeBlockVertical * 2.5,
          //   )
          // ],
        ),
        backgroundColor: Theme.of(context).primaryColor,
        body: Feed(
          books: books,
        ));
  }
}
