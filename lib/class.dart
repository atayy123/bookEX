class User {
  String name;
  String surname;
  String email;

  User({this.name, this.surname, this.email});
}

class Book {
  String title;
  String author;
  String edition;
  String year;
  String price;
  String photoUrl;
  String location;
  String description;
  User user;

  Book(
      {this.title,
      this.author,
      this.edition,
      this.year,
      this.price,
      this.photoUrl,
      this.location,
      this.user,
      this.description});
}

class Trade {
  User owners;
  User buyers;
  Book ownersBook;
  Book buyersBook;
  String tradeDate;
  String status;

  Trade(
      {this.owners,
      this.buyers,
      this.buyersBook,
      this.ownersBook,
      this.tradeDate,
      this.status});
}
