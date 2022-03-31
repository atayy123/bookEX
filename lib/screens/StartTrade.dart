import 'package:book_app/screens/SendTrade.dart';
import 'package:flutter/material.dart';
import '../class.dart';
import '../data.dart';

class StartTrade extends StatelessWidget {
  final Book theirBook;

  const StartTrade({Key key, this.theirBook}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text("Trade with " + theirBook.title),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          height: double.maxFinite,
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(30)),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: books.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SendTrade(
                                ownersbook: books[index],
                                buyersbook: theirBook,
                              )));
                },
                child: Container(
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
                            books[index].photoUrl,
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
                                books[index].title,
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
                                books[index].author,
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                books[index].edition,
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Text(
                                        books[index].price,
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
                                          books[index].location,
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
                ),
              );
            },
          ),
        ));
  }
}
