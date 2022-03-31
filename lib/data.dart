import 'package:book_app/class.dart';

User user1 = User(name: "Saitcan", surname: "Başkol", email: "sait@abi.com");
User user2 = User(name: "Ata", surname: "Yavuzyılmaz", email: "ata@abi.com");

Book optics = Book(
    author: "Bahaa E. A. Saleh and Malvin Carl Teich",
    title: "Fundamentals of Photonics",
    edition: "2nd Edition",
    year: "1991",
    photoUrl: "assets/images/optics.jpg",
    price: "\$106.80",
    location: "Istanbul",
    description:
        """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tristique velit a erat iaculis interdum. Phasellus non odio cursus lectus iaculis tristique. In hac habitasse platea dictumst. Nam suscipit ligula vel consequat blandit. Morbi scelerisque convallis dui eu fringilla. Suspendisse ut egestas odio. Aliquam erat volutpat. In fringilla nunc id dui pellentesque vulputate. Sed tempor ullamcorper turpis egestas vulputate. In egestas sapien dui, quis luctus turpis vestibulum vel.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non blandit metus, at interdum orci. Mauris iaculis magna sit amet libero maximus pulvinar. Aliquam aliquam facilisis est, id varius metus sodales a. Proin laoreet tempus dolor, vel feugiat sem dapibus ut. Nam aliquet diam mattis, dictum orci sit amet, mattis massa. Phasellus congue nibh eget dolor ultrices, vitae luctus nunc dictum. Suspendisse in justo justo. Integer rutrum ligula tortor, et dapibus lectus ultricies quis. Aliquam facilisis posuere mauris vel sagittis. Donec consectetur risus dignissim, porttitor sem vel, consequat velit.

Fusce iaculis vel ante ut laoreet. Proin porttitor quam eu facilisis imperdiet. Morbi non faucibus tortor, a ullamcorper quam. Morbi lacinia interdum feugiat. In congue sodales neque, vitae congue nibh. Quisque ornare finibus metus venenatis posuere. Etiam maximus pellentesque justo quis blandit. Ut varius rutrum tempus. Vivamus eu maximus erat. Nunc erat ex, convallis tincidunt velit eget, fringilla bibendum erat. Maecenas mollis sollicitudin sem, sit amet pretium arcu volutpat at. In interdum metus arcu, auctor rutrum neque tincidunt id. Cras non dui et urna mollis scelerisque et non metus. Vestibulum et fringilla justo, at bibendum odio. Proin mattis cursus orci, in finibus nibh. Sed non ornare turpis.""",
    user: user1);

Book calculus = Book(
    author: "James Stewart",
    title: "Calculus",
    edition: "8th Edition",
    year: "1987",
    photoUrl: "assets/images/calculus.jpg",
    price: "\$19.38",
    location: "Ankara",
    description:
        """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tristique velit a erat iaculis interdum. Phasellus non odio cursus lectus iaculis tristique. In hac habitasse platea dictumst. Nam suscipit ligula vel consequat blandit. Morbi scelerisque convallis dui eu fringilla. Suspendisse ut egestas odio. Aliquam erat volutpat. In fringilla nunc id dui pellentesque vulputate. Sed tempor ullamcorper turpis egestas vulputate. In egestas sapien dui, quis luctus turpis vestibulum vel.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non blandit metus, at interdum orci. Mauris iaculis magna sit amet libero maximus pulvinar. Aliquam aliquam facilisis est, id varius metus sodales a. Proin laoreet tempus dolor, vel feugiat sem dapibus ut. Nam aliquet diam mattis, dictum orci sit amet, mattis massa. Phasellus congue nibh eget dolor ultrices, vitae luctus nunc dictum. Suspendisse in justo justo. Integer rutrum ligula tortor, et dapibus lectus ultricies quis. Aliquam facilisis posuere mauris vel sagittis. Donec consectetur risus dignissim, porttitor sem vel, consequat velit.

Fusce iaculis vel ante ut laoreet. Proin porttitor quam eu facilisis imperdiet. Morbi non faucibus tortor, a ullamcorper quam. Morbi lacinia interdum feugiat. In congue sodales neque, vitae congue nibh. Quisque ornare finibus metus venenatis posuere. Etiam maximus pellentesque justo quis blandit. Ut varius rutrum tempus. Vivamus eu maximus erat. Nunc erat ex, convallis tincidunt velit eget, fringilla bibendum erat. Maecenas mollis sollicitudin sem, sit amet pretium arcu volutpat at. In interdum metus arcu, auctor rutrum neque tincidunt id. Cras non dui et urna mollis scelerisque et non metus. Vestibulum et fringilla justo, at bibendum odio. Proin mattis cursus orci, in finibus nibh. Sed non ornare turpis.""",
    user: user1);

List<Book> books = [
  optics,
  calculus,
  optics,
  calculus,
  optics,
  calculus,
  optics,
  calculus
];

Trade trade1 = Trade(
    owners: user1,
    buyers: user2,
    ownersBook: calculus,
    buyersBook: optics,
    tradeDate: "08/12/2022");

List<Trade> trades = [trade1, trade1, trade1, trade1, trade1];
