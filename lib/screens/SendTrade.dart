import 'package:book_app/class.dart';
import 'package:book_app/components/bookShow.dart';
import 'package:book_app/components/tradeSheet.dart';
import 'package:flutter/material.dart';

class SendTrade extends StatelessWidget {
  final Book ownersbook;
  final Book buyersbook;

  const SendTrade({Key key, this.ownersbook, this.buyersbook})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text("Trade"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: double.maxFinite,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Their Book:",
                  softWrap: true,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                ),
                BookShow(
                  book: buyersbook,
                ),
                Text(
                  "Your Book:",
                  softWrap: true,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                ),
                BookShow(
                  book: ownersbook,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RawMaterialButton(
                fillColor: Theme.of(context).primaryColor,
                child: Container(
                  color: Color(0xFF4E596F),
                  width: 250,
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "SEND TRADE REQUEST",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ],
          ),
        ));
  }
}
