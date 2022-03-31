import 'package:book_app/class.dart';
import 'package:book_app/components/bookShow.dart';
import 'package:book_app/components/tradeSheet.dart';
import 'package:flutter/material.dart';

class TradeRequest extends StatelessWidget {
  final Trade trade;

  const TradeRequest({Key key, this.trade}) : super(key: key);

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
                book: trade.buyersBook,
              ),
              Text(
                "Your Book:",
                softWrap: true,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              BookShow(
                book: trade.ownersBook,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: TradeSheet(),
    );
  }
}
