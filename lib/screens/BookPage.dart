import 'package:book_app/class.dart';
import 'package:book_app/components/bookSheet.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class BookPage extends StatefulWidget {
  final Book book;

  const BookPage({Key key, this.book}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: BookSheet(
          book: widget.book,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          width: double.infinity,
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  iconTheme: IconThemeData(
                    color: Colors.white,
                  ),
                  title: Text(
                    widget.book.title,
                    style: TextStyle(color: Colors.white),
                  ),
                  elevation: 0,
                  backgroundColor: Color(0xFF4E586E),
                  expandedHeight: MediaQuery.of(context).size.height * 0.5,
                  flexibleSpace: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 62),
                      width: 172,
                      height: 225,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(widget.book.photoUrl),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            widget.book.user.name +
                                " " +
                                widget.book.user.surname,
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              widget.book.location,
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        widget.book.title,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      widget.book.author,
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      widget.book.edition,
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // TabBar(
                  //   controller: controller,
                  //   indicator: UnderlineTabIndicator(
                  //     borderSide: BorderSide(width: 1.0),
                  //     insets: EdgeInsets.zero,
                  //   ),
                  //   labelColor: Colors.black,
                  //   indicatorColor: Colors.black,
                  //   tabs: [
                  //     Tab(text: "Description"),
                  //     Tab(text: "Similar Books")
                  //   ],
                  // ),
                ]))
              ];
            },
            body: Container(
              margin: EdgeInsets.all(10),
              child: Text(
                widget.book.description,
                style: TextStyle(fontSize: 18),
              ),
            ),
            // TabBarView(
            //   controller: controller,
            //   children: [
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       child: Text(
            //         widget.book.description,
            //         style: TextStyle(fontSize: 18),
            //       ),
            //     ),
            //     ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: books.length,
            //         itemBuilder: (BuildContext context, int index) {
            //           return Container(
            //             padding:
            //                 EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            //             margin: EdgeInsets.all(8),
            //             decoration: BoxDecoration(
            //                 color: Color.fromARGB(255, 193, 193, 193),
            //                 borderRadius: BorderRadius.circular(15)),
            //             child: ConstrainedBox(
            //               constraints:
            //                   BoxConstraints(maxHeight: 200, maxWidth: 150),
            //               child: Flexible(
            //                 child: Column(
            //                   children: [
            //                     Container(
            //                       child: Image.asset(
            //                         books[index].photoUrl,
            //                       ),
            //                     ),
            //                     SizedBox(height: 18),
            //                     Text(
            //                       books[index].title,
            //                       style: TextStyle(
            //                           fontWeight: FontWeight.w800,
            //                           fontSize: 22),
            //                     ),
            //                     Text(
            //                       books[index].edition,
            //                       style: TextStyle(
            //                           fontWeight: FontWeight.w600,
            //                           fontSize: 20),
            //                     ),
            //                     Text(
            //                       books[index].author,
            //                       style: TextStyle(fontSize: 20),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           );
            //         }),
            //   ],
            // ),
          ),
        ));
  }
}
