import 'package:book_app/class.dart';
import 'package:flutter/material.dart';

class BookShow extends StatelessWidget {
  final Book book;

  const BookShow({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 0), // changes position of shadow
          ),
        ],
        color: Theme.of(context).scaffoldBackgroundColor,
        //   borderRadius: BorderRadius.circular(30)
      ),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: Container(
          child: Row(
        children: [
          SizedBox(
              height: 150,
              width: 100,
              child: Image.asset(
                book.photoUrl,
                fit: BoxFit.fill,
              )),
          Flexible(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF4E586E)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    book.author,
                    softWrap: true,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    book.edition,
                    softWrap: true,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFFF54B64),
                                    Color(0xFFF78361)
                                  ]),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            book.price,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text(
                              book.location,
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
