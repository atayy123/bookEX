import 'package:book_app/screens/HomePage.dart';
import 'package:book_app/screens/ProfilePage.dart';
import 'package:book_app/screens/SearchPage.dart';
import 'package:book_app/screens/TradePage.dart';
import 'package:flutter/material.dart';
import 'screens/loginPage.dart';

void main() {
  runApp(BookApp());
}

class BookApp extends StatefulWidget {
  @override
  State<BookApp> createState() => _BookAppState();
}

class _BookAppState extends State<BookApp> {
  // uygulama açılınca home page açılacak
  int _currentIndex = 0;
  // bottom nav bardaki diğer sayfalar
  final List<Widget> tabs = [
    HomePage(),
    // SearchPage(),
    TradePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // uygulamanın ana rengi
            primaryColor: Color(0xFF242A38),
            // arkaplan rengi
            scaffoldBackgroundColor: Color(0xFFF9F9F9),
            // responsive yapmak için
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'Merriweather-Regular'),
        home: Scaffold(
          // seçilmiş sayfa body de gösterilecek
          body: tabs[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color(0xFF242A38),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white60,
              // default olarak 0
              currentIndex: _currentIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                // bottom nav bar ikonları ve textleri
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: "Home"),
                // BottomNavigationBarItem(
                //     icon: Icon(
                //       Icons.search,
                //     ),
                //     label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.change_circle), label: "Trade"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: "Profile")
              ],
              onTap: (index) {
                setState(() {
                  // tıklayınca current indexi değiştir
                  _currentIndex = index;
                });
              }),
        ));
  }
}
