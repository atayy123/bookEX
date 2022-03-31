import 'package:flutter/material.dart';

import '../class.dart';

class TradeSheet extends StatelessWidget {
  final Book book;

  const TradeSheet({Key key, this.book}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RawMaterialButton(
            fillColor: Theme.of(context).primaryColor,
            child: Container(
              color: Color(0xFF4E596F),
              width: 120,
              padding: EdgeInsets.all(12),
              child: Text(
                "ACCEPT",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          RawMaterialButton(
            fillColor: Theme.of(context).primaryColor,
            child: Container(
              color: Color(0xFF4E596F),
              width: 120,
              padding: EdgeInsets.all(12),
              child: Text(
                "REJECT",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ],
      ),
    );
  }
}
